import pyecharts.options as opts
from pyecharts.charts import Line
import pymysql

# 上映时间集合
showtime = []
# 上映年份集合
showyear = []
# 全球上映年份集合
total_num = []
# 中国上映年份字典
china_dict = {}
# 中国上映年份集合
china_num = []
# 美国上映年份字典
foreign_dict = {}
# 美国上映年份集合
foreign_num = []
# 查询中外电影上映年份
def select_data():
    showtime.clear()
    showyear.clear()
    total_num.clear()
    china_dict.clear()
    china_num.clear()
    foreign_dict.clear()
    foreign_num.clear()
    try:
        # 打开数据库连接
        conn = pymysql.connect(host='127.0.0.1', port=3306, user='root', passwd='123456', db='douban', charset='utf8')
        # 使用cursor方法创建一个游标
        cursor = conn.cursor()
        # 查询数据表数据
        # 查询统计不同上映年份的电影数量
        sql = "select distinct showtime,count(showtime) from tb_film  where showtime is not null group by showtime order by showtime "
        cursor.execute(sql)
        # 年份、数量集合
        rows = cursor.fetchall()
        for row in rows:
            showtime.append(row[0])
            total_num.append(row[1])
        for i in showtime:
            showyear.append(str(i))
        print(showyear)
        print(total_num)
        # 查询中国上映年份
        sql2 = "select showtime,count(showtime) as num from tb_film where showtime is not null and  areas like '%中国%' group by showtime order by showtime"
        cursor.execute(sql2)
        china_list = cursor.fetchall()
        for i in china_list:
            china_dict[i[0]] = i[1]
        for j in showtime:
            if j not in china_dict.keys():
                china_dict[j] = 0
        china_set = sorted(china_dict.items())
        print(china_set)
        for row in china_set:
            china_num.append(row[1])
        print(china_num)

        # 查询美国上映年份
        sql3 = "select showtime,count(showtime) as num from tb_film where showtime is not null and areas  like '%美国%' group by showtime order by showtime"
        cursor.execute(sql3)
        foreign_list = cursor.fetchall()
        for i in foreign_list:
            foreign_dict[i[0]] = i[1]
        for j in showtime:
            if j not in foreign_dict.keys():
                foreign_dict[j] = 0
        foreign_set = sorted(foreign_dict.items())
        print(foreign_set)
        for row in foreign_set:
            foreign_num.append(row[1])
        print(foreign_num)
    except Exception as e:
        print(e)
        # 回滚
        conn.rollback()
    finally:
        # 关闭cursor对象
        cursor.close()
        # 关闭数据库连接
        conn.close()
    return showyear,total_num,china_num,foreign_num

# 生成pyecharts图
def show_showtime():
    data=select_data()
    # 折线图初始化
    line = Line(init_opts=opts.InitOpts(page_title="豆瓣电影-中外电影上映年份分布图"))
    # 横坐标
    line.add_xaxis(data[0])
    # 纵坐标
    line.add_yaxis("全球", data[1], color="#2f4554")
    line.add_yaxis("中国", data[2], color="#749f83")
    line.add_yaxis("美国", data[3], color="#c23531")
    line.set_series_opts(
        label_opts=opts.LabelOpts(is_show=False),
        # 标记最大值
        markpoint_opts=opts.MarkPointOpts(
            data=[
                opts.MarkPointItem(type_="max", name="最大值"),
            ]
        )
    )
    # 全局配置
    line.set_global_opts(
        # 标题
        title_opts=opts.TitleOpts(
            title="豆瓣电影-中外电影上映年份分布图", pos_left='center'),
        # 标签
        legend_opts=opts.LegendOpts(
            pos_left="620px", pos_top="28px"),
        # 水平滚动条
        datazoom_opts=opts.DataZoomOpts(),
        # 纵坐标设置
        yaxis_opts=opts.AxisOpts(
            # 显示坐标轴刻度
            axistick_opts=opts.AxisTickOpts(is_show=True),
            # 显示分割线
            splitline_opts=opts.SplitLineOpts(is_show=True)
        )
    )
    # 生成HTML
    html="pages/iframes/showtime.html"
    line.render("./templates/"+html)
    return html


