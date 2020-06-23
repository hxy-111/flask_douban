import pyecharts.options as opts
from pyecharts.charts import Line
import pymysql

# 电影评分集合
score = []
score_list = []
score_num = []
# 中国电影评分
china_dict = {}
china_score = []
china_num = []
# 美国电影评分
foreign_dict = {}
foreign_score = []
foreign_num = []
# 查询电影评分
def select_data():
    score.clear()
    score_list.clear()
    score_num.clear()
    china_dict.clear()
    china_score.clear()
    china_num.clear()
    foreign_dict.clear()
    foreign_score.clear()
    foreign_num.clear()
    try:
        # 打开数据库连接
        conn = pymysql.connect(host='127.0.0.1', port=3306, user='root', passwd='123456', db='douban', charset='utf8')
        # 使用cursor方法创建一个游标
        cursor = conn.cursor()
        # 查询数据表数据
        # 查询评分
        sql = "select score,count(score) from tb_film where score is not null group by score order by score "
        cursor.execute(sql)
        rows = cursor.fetchall()
        for row in rows:
            score.append(row[0])
            score_num.append(row[1])
        for i in score:
            score_list.append(str(i))
        print(score_list)
        print(score)
        print(score_num)

        # 查询中国评分
        sql = "select score,count('score') as num from tb_film where score is not null and areas like '%中国%'group by score order by score "
        cursor.execute(sql)
        rows = cursor.fetchall()
        for i in rows:
            china_dict[i[0]] = i[1]
        for j in score:
            if j not in china_dict.keys():
                china_dict[j] = 0
        for row in sorted(china_dict.items()):
            china_num.append(row[1])
        print(china_num)

        # 查询美国国评分
        sql = "select score,count('score') as num from tb_film where score is not null and areas like '%美国%'group by score order by score "
        cursor.execute(sql)
        rows = cursor.fetchall()
        for i in rows:
            foreign_dict[i[0]] = i[1]
        for j in score:
            if j not in foreign_dict.keys():
                foreign_dict[j] = 0
        for row in sorted(foreign_dict.items()):
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
    return score_list,score_num,foreign_num,china_num


# 生成pyecharts图
def show_score():
    data=select_data()
    line = Line(init_opts=opts.InitOpts(page_title='豆瓣电影TOP250-中外电影评分分布'))
    line.add_xaxis(data[0])
    line.add_yaxis("全球", data[1], is_smooth=True, color="#749f83")
    line.add_yaxis("美国", data[2], is_smooth=True, color="#c23531")
    line.add_yaxis("中国", data[3], is_smooth=True, color="#61a0a8")
    line.set_series_opts(
        areastyle_opts=opts.AreaStyleOpts(opacity=0.5),
        label_opts=opts.LabelOpts(is_show=False),
        # 标记最大值
        markpoint_opts=opts.MarkPointOpts(
            data=[
                opts.MarkPointItem(type_="max", name="最大值"),
            ]
        )
    )
    line.set_global_opts(
        title_opts=opts.TitleOpts(title="豆瓣电影TOP250-中外电影评分分布", pos_left='center'),
        # 水平滚动条
        datazoom_opts=opts.DataZoomOpts(),
        xaxis_opts=opts.AxisOpts(
            axistick_opts=opts.AxisTickOpts(is_align_with_label=True),
            is_scale=False,
            boundary_gap=False,
        ),
        legend_opts=opts.LegendOpts(
            pos_left="620px", pos_top="28px"),
        yaxis_opts=opts.AxisOpts(
            # 显示坐标轴刻度
            axistick_opts=opts.AxisTickOpts(is_show=True),
            # 显示分割线
            splitline_opts=opts.SplitLineOpts(is_show=True)
        )
    )
    # 生成HTML
    html="pages/iframes/score.html"
    line.render("./templates/"+html)
    return html


