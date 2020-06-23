from pyecharts import options as opts
from pyecharts.charts import WordCloud,Bar,Grid
import pymysql

search_list=[]
search_set={}
search_data=[]
data_list=[]
num_list=[]
# 查询电影上映地区与数量的关系
def select_all(search,cut):
    search_list.clear()
    search_set.clear()
    search_data.clear()
    data_list.clear()
    num_list.clear()
    try:
        #打开数据库连接
        conn = pymysql.connect(host='127.0.0.1', port=3306, user='root', passwd='123456', db='douban', charset='utf8')
        # cursorclass = pymysql.cursors.DictCursor
        #使用cursor方法创建一个游标
        cursor = conn.cursor()
        #查询数据表数据
        if search=='主演':
            sql="select actors from tb_film where actors is not null"
        elif search == '导演':
            sql = "select directors from tb_film where directors is not null"
        elif search=='编剧':
            sql = "select scriptwriters from tb_film where scriptwriters is not null"
        cursor.execute(sql)
        # 取出每部电影的地区
        searchs_all = cursor.fetchall()
        # print(searchs_all)
        for row in searchs_all:
            searchs=row[0].split('/')
            # print(searchs)
            # 所有地区列表
            for i in searchs:
                # print(i)
                search_list.append(i)
                # 地区集合
                if search_list.count(i) > 1:
                    search_set[i] = search_list.count(i)
        # 地区集合分类汇总为地区、数量列表
        search_dist=sorted(search_set.items(),key=lambda item:item[1], reverse=True)
        # print(search_dist)
        for i in search_dist:
            b=tuple([str(j) for j in i])
            search_data.append(b)
        print(search_data)
        for i in search_data:
            data_list.append(i[0])
            num_list.append(i[1])
    except Exception as e:
        print(e)
        # 回滚
        conn.rollback()
    finally:
        # 关闭cursor对象
        cursor.close()
        # 关闭数据库连接
        conn.close()
    return search_data[0:cut],data_list[0:cut],num_list[0:cut]


def film_search(search,cut):
    search_data = (select_all(search, cut))
    wordcloud = (
        WordCloud()
            .add(series_name="{}".format(search), data_pair=search_data[0], word_size_range=[15, 45])
            .set_global_opts(
            tooltip_opts=opts.TooltipOpts(is_show=True),
        )
    )
    # 柱状图初始化
    bar = (Bar()
           # 横坐标
           .add_xaxis(search_data[1])
           # 纵坐标
           .add_yaxis('频数', search_data[2], color="#749f83")
           # 全局配置
           .set_global_opts(
                title_opts=opts.TitleOpts(title="豆瓣电影-频数前{}的{}".format(cut,search), pos_left='350px'),
                # 标签
                legend_opts=opts.LegendOpts(is_show=False),
                # 横坐标设置
                xaxis_opts=opts.AxisOpts(
                    # 标签旋转
                    axislabel_opts=opts.LabelOpts(
                        font_size=12,
                        rotate=320
                    ),
                )
            )
           # 系列配置
           # 纵坐标显示数据
           .set_series_opts(label_opts=opts.LabelOpts(formatter="{c}"))
           )
    # 组合组件
    grid = (
        Grid(init_opts=opts.InitOpts())
            .add(wordcloud, grid_opts=opts.GridOpts())
    )
    g2 = (
        Grid(init_opts=opts.InitOpts(page_title='豆瓣电影-频数统计',width='1500px'))
            .add(bar,grid_opts=opts.GridOpts(pos_left='5%', pos_right='70%',pos_bottom='20%',pos_top='20%'))
            .add(grid, grid_opts=opts.GridOpts())
    )
    # 生成HTML
    html="pages/iframes/film_search.html"
    g2.render("./templates/"+html)
    return html






