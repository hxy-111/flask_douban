from pyecharts import options as opts
from pyecharts.charts import Pie,Bar,Grid
from flask_sqlalchemy import SQLAlchemy
db = SQLAlchemy()
import pymysql

# 上映年份
showtime = []
# 查询中外电影上映年份
def select_showtime():
    showtime.clear()
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
        showtime.reverse()
        print(showtime)
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


# 地区
genres_dist = {}
genres_list = []
genres_num = []
# 查询电影上映类型与数量的关系
def select_genres(showtime):
    genres_dist.clear()
    try:
        #打开数据库连接
        conn = pymysql.connect(host='127.0.0.1', port=3306, user='root', passwd='123456', db='douban', charset='utf8')
        #使用cursor方法创建一个游标
        cursor = conn.cursor()
        #查询数据表数据
        cursor.execute("select genres,count(genres) from tb_film where genres is not null and showtime = %s group by genres",showtime)
        # 取出每部电影的地区
        rows = cursor.fetchall()
        # 地区分类汇总
        for row in rows:
            genress=(row[0].split('/'))
            for j in range(len(genress)):
                if genress[j] in genres_dist.keys():
                    genres_dist[genress[j]] = genres_dist[genress[j]]+row[1]
                else:
                    genres_dist[genress[j]] = row[1]
        genres_list=list(genres_dist.keys())
        genres_num=list(genres_dist.values())
    except Exception as e:
        print(e)
        # 回滚
        conn.rollback()
    finally:
        # 关闭cursor对象
        cursor.close()
        # 关闭数据库连接
        conn.close()
    print(genres_list)
    print(genres_num)
    return genres_list,genres_num

# 查询电影上映地区与数量的关系
def select_area(showtime):
    # 地区
    area_dist = {}
    area = []
    area_num = []
    try:
        #打开数据库连接
        conn = pymysql.connect(host='127.0.0.1', port=3306, user='root', passwd='123456', db='douban', charset='utf8')
        #使用cursor方法创建一个游标
        cursor = conn.cursor()
        #查询数据表数据
        cursor.execute("select areas,count(areas) from tb_film where areas is not null and showtime = %s group by areas",showtime)
        # 取出每部电影的地区
        area_list = cursor.fetchall()
        # 地区分类汇总
        for row in area_list:
            areas=(row[0].split('/'))
            for j in range(len(areas)):
                if areas[j] in area_dist.keys():
                    area_dist[areas[j]] = area_dist[areas[j]]+row[1]
                else:
                    area_dist[areas[j]] = row[1]
        area_list=(sorted(area_dist.items(), key=lambda item:item[1], reverse=True))
        print(area_list)
        for i in area_list:
            area.append(i[0])
            area_num.append(i[1])
    except Exception as e:
        print(e)
        # 回滚
        conn.rollback()
    finally:
        # 关闭cursor对象
        cursor.close()
        # 关闭数据库连接
        conn.close()
    print(area)
    print(area_num)
    return area,area_num

def showtime_group(showtime):
    area_list = select_area(showtime)
    genres_list=select_genres(showtime)
    bar = (
        Bar()
            .add_xaxis(area_list[0])
            .add_yaxis(
            '',
            area_list[1],
            color="#61a0a8",
            # is_selected=False,
            label_opts=opts.LabelOpts(is_show=True),
        )
            .set_global_opts(
            tooltip_opts=opts.TooltipOpts(
                is_show=True, trigger="axis", axis_pointer_type="shadow"
            ),
            # 横坐标设置
            xaxis_opts=opts.AxisOpts(
                # 标签旋转
                axislabel_opts=opts.LabelOpts(
                    font_size=12,
                    rotate=320
                ),
            )
        )
    )
    pie = (
        Pie()
            .add(
            "上映地区",
            [list(z) for z in zip(genres_list[0], genres_list[1])],
            rosetype="radius",
            radius=["30%", "55%"],
            center=["70%", "50%"]
        )
            .set_series_opts(label_opts=opts.LabelOpts(formatter="{b}: {c}"))
            .set_global_opts(
            title_opts=opts.TitleOpts("豆瓣电影-第{}年上映地区、电影类型分布".format(showtime), pos_left='center'),
            legend_opts=opts.LegendOpts(is_show=False),
            tooltip_opts=opts.TooltipOpts(is_show=True, trigger="axis", axis_pointer_type="shadow")
        )
    )
    grid = (
        Grid(init_opts=opts.InitOpts(page_title='豆瓣电影-不同上映年份的类型、地区分布',width='1000px'))
            .add(bar,grid_opts=opts.GridOpts(pos_left='10%', pos_right='60%',pos_top='15%',pos_bottom='20%'))
            .add(pie, grid_opts=opts.GridOpts())
    )
    # 生成HTML
    html="pages/iframes/showtime_group.html"
    grid.render("./templates/"+html)
    return html


