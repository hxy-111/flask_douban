import pymysql
from pyecharts import options as opts
from pyecharts.charts import Timeline, Bar, Grid

# 上映年份
showtime = []
# 查询中外电影上映年份
def select_showtime():
    try:
        # 打开数据库连接
        conn = pymysql.connect(host='127.0.0.1', port=3306, user='root', passwd='123456', db='douban', charset='utf8')
        # 使用cursor方法创建一个游标
        cursor = conn.cursor()
        # 查询数据表数据
        # 查询上映年份
        sql = "select distinct showtime from tb_film where showtime is not null order by showtime "
        cursor.execute(sql)
        rows = cursor.fetchall()
        showtime.clear()
        for row in rows:
            showtime.append(row[0])
        # print(showtime)
    except Exception as e:
        print(e)
        # 回滚
        conn.rollback()
    finally:
        # 关闭cursor对象
        cursor.close()
        # 关闭数据库连接
        conn.close()
    return showtime


# 查询评论人数Top10的电影
def select_film(i):
    # 电影名称集合
    filmname = []
    # 评论人数集合
    comment = []
    try:
        # 打开数据库连接
        conn = pymysql.connect(host='127.0.0.1', port=3306, user='root', passwd='123456', db='douban', charset='utf8')
        # 使用cursor方法创建一个游标
        cursor = conn.cursor()
        # 查询数据表数据
        # 查询电影评论人数前十的电影
        cursor.execute("select filmname,comments  from tb_film where comments is not null and showtime > 0 and showtime <= %d order by comments desc limit 10"%(i))
        # 电影名称、评论人数数集合
        name_list = cursor.fetchall()
        for row in name_list:
            # 电影名称集合
            filmname.append(row[0])
            # 评论人数集合
            comment.append(row[1])
        filmname.reverse()
        comment.reverse()
        # print(filmname)
        # print(comment)
    except Exception as e:
        print(e)
        # 回滚
        conn.rollback()
    finally:
        # 关闭cursor对象
        cursor.close()
        # 关闭数据库连接
        conn.close()
    return filmname, comment

def select_data(year):
    film_list=select_film(year)
    colors = [
        "#546570", "#c4ccd3", "#bda29a", "#ca8622", "#d48265",
        "#6e7074", "#749f83", "#61a0a8", "#2f4554", "#c23531",
        "#6e7074", "#749f83", "#61a0a8", "#2f4554", "#c23531"
    ]
    y = []
    for n in range(len(film_list[1])):
        y.append(
            opts.BarItem(
                name=film_list[0][n],
                value=film_list[1][n],
                itemstyle_opts=opts.ItemStyleOpts(color=colors[n]),
            )
        )
    return y

def show_comment_top():
    # 查找上映年份集合
    showtime=select_showtime()
    # 生成时间轴的图
    timeline = Timeline(init_opts=opts.InitOpts(page_title="豆瓣电影TOP250-评论人数TOP10的电影"))
    for year in showtime:
        film_tuple=select_film(year)
        date_list=select_data(year)
        timeline.add_schema(is_auto_play=True, play_interval=1000)
        # 柱状图初始化
        bar = Bar()
        # 横坐标
        bar.add_xaxis(film_tuple[0])
        # 纵坐标
        bar.add_yaxis(
            "",
            date_list,
            # 数据靠右显示
            label_opts=opts.LabelOpts(is_show=True, position='right')
        )
        # 横纵坐标翻转
        bar.reversal_axis()
        # 全局配置
        bar.set_global_opts(
            # 标题
            title_opts=opts.TitleOpts(title="豆瓣电影TOP250-第{}年评论人数TOP10的电影".format(year), pos_left='center'),
            # 横坐标隐藏
            xaxis_opts=opts.AxisOpts(is_show=False,split_number=10),
            # 纵坐标
            yaxis_opts=opts.AxisOpts(
                max_=9,
                # 字体大小
                axislabel_opts=opts.LabelOpts(font_size=10),
                # 隐藏坐标轴
                axisline_opts=opts.AxisLineOpts(is_show=False),
                # 隐藏刻度
                axistick_opts=opts.AxisTickOpts(is_show=False)
            )
        )
        # 组合组件
        grid = (
            Grid()
                .add(bar, grid_opts=opts.GridOpts(pos_top='8%', pos_bottom='12%', pos_left='25%'))
        )
        timeline.add(grid, "{}年".format(year))
        timeline.add_schema(is_auto_play=True, play_interval=1000,is_loop_play=False, width='820px', pos_left='60px')
    # 生成HTML
    html = "pages/iframes/comment_top.html"
    timeline.render("./templates/" + html)
    return html

