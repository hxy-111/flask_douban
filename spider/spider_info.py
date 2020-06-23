import csv
import pymysql
import requests
import re
from lxml import html
import time

# 请求头
headers = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36"
}

# 读取电影url
urls = []
with open('./豆瓣电影TOP250链接.csv', 'r') as f:
    reader = csv.reader(f)
    urls = [row[0] for row in reader]

for i in range(0, len(urls)):
    url = urls[i]
    # 请求页面
    r = requests.get(url=url, headers=headers, timeout=5)
    time.sleep(2)
    etree = html.etree
    selector = etree.HTML(r.text)

    # 获取电影名称
    filmname = []
    try:
        filmname = selector.xpath('//*[@id="content"]/h1/span[1]/text()')[0]  # 电影名
        if filmname == "":
            filmname = None
    except Exception as e:
        filmname = None
    print("filmname :{}".format(filmname))

    # 获取电影评分
    score = []
    try:
        score_list = selector.xpath('//*[@id="interest_sectl"]/div[1]/div[2]/strong/text()')
        score = score_list[0].replace("\t", "").replace("\n", "")
        if score == "":
            score = None
    except Exception as e:
        score = None
    print("score :{}".format(score))

    # 获取电影上映时间
    showtime = []
    try:
        st = selector.xpath('//*[@id="content"]/h1/span[2]/text()')[0]  # 上映日期
        showtime = st.replace("(", "").replace(")", "")
        if showtime == "":
            showtime = None
    except Exception as e:
        showtime = None
    print("time :{}".format(showtime))

    # 获取电影片长
    mins = []
    try:
        mins_list = re.findall('片长:</span>.*?>(.*?)</span>', r.text, re.S)  # 片长
        mins = mins_list[0].replace(' ', '').replace('分钟', '')
        if mins == "":
            mins = None
    except Exception as e:
        mins = None
    print("mins :{}".format(mins))

    # 获取电影类型
    genres_list = []
    try:
        genres_list = re.findall('<span property="v:genre">(.*?)</span>', r.text, re.S)
        genres_list = '/'.join(genres_list)
        if genres_list == "":
            genres_list = None
    except Exception as e:
        genres_list = None
    print("genres_list :{}".format(genres_list))

    # 获取电影制片地区
    area_list = []
    try:
        area_list = re.findall('<span class="pl">制片国家/地区:</span> (.*?)<br/>', r.text, re.S)
        area_list = '/'.join(area_list).replace(' ', '')
        if area_list == "":
            area_list = None
    except Exception as e:
        area_list = None
    print("area_list :{}".format(area_list))

    # 获取电影导演
    directors_list = []
    try:
        d_list = selector.xpath('//div[@id="info"]/span[1]/span[2]/a/text()')  # 导演
        if len(d_list) > 2:
            for i in range(0, 3):
                directors_list.append(d_list[i])
        else:
            for j in range(0, len(d_list)):
                directors_list.append(d_list[j])
        directors_list = '/'.join(directors_list)
        if directors_list == "":
            directors_list = None
    except Exception as e:
        directors_list = None
    print("directors_list :{}".format(directors_list))

    # 获取电影编剧
    scriptwriters_list = []
    try:
        w_list = selector.xpath('//*[@id="info"]/span[2]/span[2]/a/text()')  # 编剧
        if len(w_list) > 2:
            for i in range(0, 3):
                scriptwriters_list.append(w_list[i])
        else:
            for j in range(0, len(w_list)):
                scriptwriters_list.append(w_list[j])
        scriptwriters_list = '/'.join(scriptwriters_list)
        if scriptwriters_list == "":
            scriptwriters_list = None
    except Exception as e:
        scriptwriters_list = None
    print('scriptwriters_list :{}'.format(scriptwriters_list))

    # 获取电影主演
    actors_list = []
    try:
        actors = selector.xpath('//*[@id="info"]/span[3]/span[2]')[0]  # 演员
        a_list = actors.xpath('string(.)').replace(' ', '').split('/')  # 标签套标签，用string(.)同时获取所有文本
        if len(a_list) > 2:
            for i in range(0, 3):
                actors_list.append(a_list[i])
        else:
            for j in range(0, a_list):
                actors_list.append(a_list[j])
        actors_list = '/'.join(actors_list)
        if actors_list == "":
            actors_list = None
    except Exception as e:
        actors_list = None
    print('actors_list :{}'.format(actors_list))

    # 获取电影评价
    comment = []
    try:
        comment = selector.xpath('//*[@id="interest_sectl"]/div[1]/div[2]/div/div[2]/a/span/text()')[0]
        if comment == "":
            comment = None
    except Exception as e:
        comment = None
    print("comment :{}".format(comment))

    try:
        # 打开数据库连接
        conn = pymysql.connect(host='127.0.0.1', port=3306, user='root', passwd='123456', db='douban', charset='utf8')
        # 使用cursor方法创建一个游标
        cursor = conn.cursor()
        # # 执行sql语句
        query = 'insert into tb_film(url, filmname, score, showtime, genres, areas, mins, directors, scriptwriters, actors, comments) values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)'
        values = (
            url, filmname, score, showtime, genres_list, area_list, mins, directors_list, scriptwriters_list,
            actors_list,
            comment)
        cursor.execute(query, values)
        # 提交之前的操作，如果之前已经执行多次的execute，那么就都进行提交
        conn.commit()
    except Exception as e:
        print(e)
        # 回滚
        conn.rollback()
    # 关闭cursor对象
    cursor.close()
    # 关闭数据库连接
    conn.close()
