from pyecharts.charts import TreeMap
from pyecharts import options as opts
import pymysql

# 电影类型字典
genres_dict = {}
# 电影类型集合
genres_date = []

# 查询电影类型与数量的关系
def select_data():
    genres_dict.clear()
    genres_date.clear()
    try:
        # 打开数据库连接
        conn = pymysql.connect(host='127.0.0.1', port=3306, user='root', passwd='123456', db='douban', charset='utf8')
        # cursorclass = pymysql.cursors.DictCursor
        # 使用cursor方法创建一个游标
        cursor = conn.cursor()
        # 查询数据表数据
        sql = "select genres,count(genres) from tb_film where genres is not null group by genres"
        cursor.execute(sql)
        # 取出每部电影的类型集合
        rows = cursor.fetchall()
        for row in rows:
            genres = row[0].split('/')
            # 电影类型分类汇总
            for j in range(len(genres)):
                if genres[j] in genres_dict.keys():
                    genres_dict[genres[j]] = genres_dict[genres[j]] + row[1]
                else:
                    genres_dict[genres[j]] = row[1]
        print(genres_dict)
        # 类型集合分类汇总为类型、数量列表
        for k, v in genres_dict.items():
            genres_date.append({"value": v, "name": k})
        # print(genres_date)
    except Exception as e:
        print(e)
        # 回滚
        conn.rollback()
    finally:
        # 关闭cursor对象
        cursor.close()
        # 关闭数据库连接
        conn.close()
    return genres_date


# 生成pyecharts图
def show_genres():
    data=select_data()
    # 矩形树图初始化
    treemap = TreeMap(init_opts=opts.InitOpts(page_title="豆瓣电影-电影类型分布"))
    # 添加数据
    treemap.add(
        series_name='电影类型',
        data=data,
        # 标签居中
        label_opts=opts.LabelOpts(font_size=15, position="inside"),
    )
    # 全局配置
    treemap.set_global_opts(
        # 标题
        title_opts=opts.TitleOpts(
            title="豆瓣电影-电影类型分布", pos_left='center'
        ),
        # 标签隐藏
        legend_opts=opts.LegendOpts(is_show=False)
    )
    # 生成HTML
    html="pages/iframes/genres.html"
    treemap.render("./templates/"+html)
    return html


