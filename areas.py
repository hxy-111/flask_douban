from pyecharts import options as opts
from pyecharts.charts import Pie,Funnel
from pyecharts.faker import Faker
import pymysql

area_list=[]
area_set={}
area = []
num = []
# 查询电影上映地区与数量的关系
def select_all():
    area_list.clear()
    area_set.clear()
    area.clear()
    num.clear()
    try:
        #打开数据库连接
        conn = pymysql.connect(host='127.0.0.1', port=3306, user='root', passwd='123456', db='douban', charset='utf8')
        #使用cursor方法创建一个游标
        cursor = conn.cursor()
        #查询数据表数据
        sql = "select areas from tb_film where areas is not null"
        cursor.execute(sql)
        # 取出每部电影的地区
        areas_all = cursor.fetchall()
        for row in areas_all:
            areas=row[0].split('/')
            # print(areas)
            # 所有地区列表
            for i in areas:
                # print(i)
                area_list.append(i)
                # 地区集合
                if area_list.count(i) > 1:
                    area_set[i] = area_list.count(i)
        # 地区集合分类汇总为地区、数量列表
        for k,v in area_set.items():
            area.append(k)
            num.append(v)
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
    print(num)


def show_areas():
    select_all()
    funnel = Funnel(init_opts=opts.InitOpts(page_title='豆瓣电影-上映地区分布',height='650px'))
    funnel.add(
        "豆瓣电影TOP250-上映地区分布",
        [
            list(z)
            for z in zip(area, num)
        ]
    )
    funnel.set_global_opts(
        title_opts=opts.TitleOpts(title="豆瓣电影-上映地区分布", pos_left='center'),
        legend_opts=opts.LegendOpts(is_show=False) )
    funnel.set_series_opts(label_opts=opts.LabelOpts(formatter="{b}: {c}"))
    # 生成HTML
    html="pages/iframes/areas.html"
    funnel.render("./templates/"+html)
    return html






