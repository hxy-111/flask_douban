from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()
import pymysql


# 查询电影评分
def select_score():
    # 上映年份
    score = []
    score.clear()
    try:
        # 打开数据库连接
        conn = pymysql.connect(host='127.0.0.1', port=3306, user='root', passwd='123456', db='douban', charset='utf8')
        # 使用cursor方法创建一个游标
        cursor = conn.cursor()
        # 查询数据表数据
        # 查询上映年份
        sql = "select distinct score from tb_film where score is not null order by score "
        cursor.execute(sql)
        rows = cursor.fetchall()
        score.clear()
        for row in rows:
            score.append(row[0])
        low = score
        high = score[::-1]
        print(low)
        print(high)
    except Exception as e:
        print(e)
        # 回滚
        conn.rollback()
    finally:
        # 关闭cursor对象
        cursor.close()
        # 关闭数据库连接
        conn.close()
    return low, high


# 查询电影上映年份
def select_showtime():
    # 上映年份
    showtime = []
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


# 查询电影类型
def select_genres():
    # 地区
    genres_dist = {}
    genres = []
    genres_dist.clear()
    genres.clear()
    try:
        # 打开数据库连接
        conn = pymysql.connect(host='127.0.0.1', port=3306, user='root', passwd='123456', db='douban', charset='utf8')
        # 使用cursor方法创建一个游标
        cursor = conn.cursor()
        # 查询数据表数据
        sql = "select genres,count(genres) from tb_film where genres is not null group by genres"
        cursor.execute(sql)
        # 取出每部电影的地区
        genres_list = cursor.fetchall()
        # 地区分类汇总
        for row in genres_list:
            genress = (row[0].split('/'))
            for j in range(len(genress)):
                if genress[j] in genres_dist.keys():
                    genres_dist[genress[j]] = genres_dist[genress[j]] + row[1]
                else:
                    genres_dist[genress[j]] = row[1]
        genres_list = (sorted(genres_dist.items(), key=lambda item: item[1], reverse=True))
        for i in genres_list:
            genres.append(i[0])
        print(genres)
    except Exception as e:
        print(e)
        # 回滚
        conn.rollback()
    finally:
        # 关闭cursor对象
        cursor.close()
        # 关闭数据库连接
        conn.close()
    return genres


# 查询电影上映年份
def select_areas():
    # 地区
    area_dist = {}
    areas = []
    area_dist.clear()
    areas.clear()
    try:
        # 打开数据库连接
        conn = pymysql.connect(host='127.0.0.1', port=3306, user='root', passwd='123456', db='douban', charset='utf8')
        # 使用cursor方法创建一个游标
        cursor = conn.cursor()
        # 查询数据表数据
        sql = "select areas,count(areas) from tb_film where areas is not null group by areas"
        cursor.execute(sql)
        # 取出每部电影的地区
        area_list = cursor.fetchall()
        # 地区分类汇总
        for row in area_list:
            areas = (row[0].split('/'))
            for j in range(len(areas)):
                if areas[j] in area_dist.keys():
                    area_dist[areas[j]] = area_dist[areas[j]] + row[1]
                else:
                    area_dist[areas[j]] = row[1]
        area_list = (sorted(area_dist.items(), key=lambda item: item[1], reverse=True))
        for i in area_list:
            areas.append(i[0])
        areas = areas[3:]
        print(areas)
    except Exception as e:
        print(e)
        # 回滚
        conn.rollback()
    finally:
        # 关闭cursor对象
        cursor.close()
        # 关闭数据库连接
        conn.close()
    return areas


def film_data(**kw):
    sql = ""
    if 'low' in kw:
        if len(kw['low']) > 0:
            sql = "{} and score >= {}".format(sql, float(kw['low']))
    if 'high' in kw:
        if len(kw['high']) > 0:
            sql = "{} and score <= {}".format(sql, float(kw['high']))
    if 'showtime' in kw:
        if len(kw['showtime']) > 0:
            sql = "{} and showtime = {}".format(sql, int(kw['showtime']))
    if 'areas' in kw:
        if len(kw['areas']) > 0:
            sql = "{} and areas like '%{}%'".format(sql, str(kw['areas']))
    if 'genres' in kw:
        if len(kw['genres']) > 0:
            sql = "{} and genres like '%{}%'".format(sql, str(kw['genres']))
    if 'filmname' in kw:
        if len(kw['filmname']) > 0:
            sql = "{} and filmname like '%{}%'".format(sql, str(kw['filmname']))
    sql1 = 'select * from tb_film where 1=1 {} order by score desc'.format(sql)
    sql2 = 'select count(*) from tb_film where 1=1 {}'.format(sql)
    print(sql1)
    print(sql2)
    films_list = []
    films_list.clear()
    try:
        # 连接本地Mysql数据库
        conn = pymysql.connect(host='127.0.0.1', port=3306, user='root', passwd='123456', db='douban', charset='utf8')
        # 使用cursor方法创建一个游标
        cursor = conn.cursor()
        # 查询数据表数据
        cursor.execute(sql1)
        datas = cursor.fetchall()
        print("ret{}".format(datas))
        for i in datas:
            films_list.append(i)
        # 查询数据表记录
        cursor.execute(sql2)
        rows = cursor.fetchone()
        for j in rows:
            row = j
    except Exception as e:
        print(e)
    finally:
        conn.rollback()  # 事务回滚，如果产生异常，退回到执行sql语句之前
        cursor.close()  # 关闭游标
        conn.close()  # 关闭数据库游标
    print(films_list)
    print(row)
    return films_list, row
