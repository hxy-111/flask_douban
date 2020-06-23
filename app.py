from flask import Flask
from flask import request, redirect
from flask import render_template, url_for
from flask_paginate import Pagination
from sqlalchemy import create_engine,Column,Integer,SmallInteger,String
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base
from flask_sqlalchemy import SQLAlchemy
db = SQLAlchemy()
from list_data import select_score, select_showtime, select_genres, select_areas, film_data
from genres import show_genres
from areas import show_areas
from showtime import show_showtime
from score import show_score
from timeline_score import show_score_top
from timeline_comment import show_comment_top
from select_showtime import select_showtime
from select_showtime import showtime_group
from film_search import film_search

app = Flask(__name__)
app.jinja_env.auto_reload = True
app.config['TEMPLATES_AUTO_RELOAD'] = True

#初始化数据库连接
engine = create_engine("mysql+pymysql://root:123456@localhost:3306/douban?charset=utf8",echo = True)
#创建缓存对象
Session =sessionmaker(bind=engine)
session =Session
#声明基类
Base = declarative_base()
#定义Film对象
#基于这个基类来创建我们的自定义类，一个类就是一个数据库表；
class Film(Base):
    #表的名字
    __tablename__= 'tb_film'
    #表的结构
    id = Column(Integer,primary_key=True,autoincrement=True)
    url =Column(String(250))
    filmname =Column(String(50))
    score =Column(String)
    comments =Column(Integer)
    showtime =Column(Integer)
    genres =Column(String(20))
    areas =Column(String(20))
    actors =Column(String(50))
    directors =Column(String(50))
    scriptwriters =Column(String(50))

@app.route('/')
def index():
    # return render_template('pages/echarts/e1.html')
    # return render_template('index.html')
    return render_template('login.html')


@app.route('/welcome')
def welcome():
    return render_template('pages/welcome.html')


@app.route("/page_none")
def page_none():
    return render_template('page_none')

# 验证用户名和密码
@app.route('/login', methods=['POST'])
@app.route('/index')
def login():
    # 需要从request对象读取表单内容：
    if request.form['username'] == 'admin' and request.form['password'] == '123456':
        return render_template('index.html')

# 表单list
@app.route("/list")
@app.route("/list/")
def list(limit=10):
    # 列表属性
    t_low = select_score()[0]
    t_high = select_score()[1]
    t_showtime = select_showtime()
    t_genres = select_genres()
    t_areas = select_areas()
    # 分页
    # limit = 15
    page = int(request.args.get("page", 1))
    start = (page - 1) * limit
    if request.args.get("low") or request.args.get("high") or request.args.get("showtime") or request.args.get("areas") or request.args.get("genres") or request.args.get("filmname"):
        # 参数选择
        r_low = request.args.get("low")
        r_high = request.args.get("high")
        r_showtime = request.args.get("showtime")
        r_genres = request.args.get("genres")
        r_areas = request.args.get("areas")
        r_filmname = request.args.get("filmname")
        # 返回数据
        print("参数：{},{},{},{},{}".format(r_low, r_high, r_showtime, r_genres, r_areas,r_filmname))
        print("参数1：{}".format(type(r_low)))
        print("参数2：{}".format(len(r_low)))
        r_films = film_data(low=r_low, high=r_high, showtime=r_showtime, genres=r_genres, areas=r_areas, filmname=r_filmname)[0]
        r_row = film_data(low=r_low, high=r_high, showtime=r_showtime, genres=r_genres, areas=r_areas, filmname=r_filmname)[1]
        # 分页
        r_end = page * limit if r_row > page * limit else r_row
        r_paginate = Pagination(page=page, total=r_row)
        r_ret = r_films[start:r_end]
        return render_template('pages/order/list.html', low=t_low, high=t_high, showtime=t_showtime, genres=t_genres,
                           areas=t_areas, films=r_ret, row=r_row,paginate=r_paginate)
    else:
        # 返回数据
        films = film_data()[0]
        row = film_data()[1]
        end = page * limit if row > page * limit else row
        paginate = Pagination(page=page, total=row)
        ret=films[start:end]
        print("res:{}".format(ret))
        return render_template('pages/order/list.html', low=t_low, high=t_high, showtime=t_showtime, genres=t_genres,
                           areas=t_areas, films=ret,row=row, paginate=paginate)



# 矩形图e1
@app.route("/e1",methods=['GET'])
def e1():
    return render_template('pages/echarts/e1.html')

@app.route("/genres")
def genres():
    show_genres()
    return render_template('pages/iframes/genres.html')

# 漏斗图e2
@app.route("/e2",methods=['GET'])
def e2():
    return render_template('pages/echarts/e2.html')

@app.route("/areas")
def areas():
    show_areas()
    return render_template('pages/iframes/areas.html')

# 折线图e3
@app.route("/e3",methods=['GET'])
def e3():
    return render_template('pages/echarts/e3.html')

@app.route("/showtime")
def showtime():
    show_showtime()
    return render_template('pages/iframes/showtime.html')

# 折线图e4
@app.route("/e4",methods=['GET'])
def e4():
    return render_template('pages/echarts/e4.html')

@app.route("/score")
def score():
    show_score()
    return render_template('pages/iframes/score.html')

# 时间轴图e5
@app.route("/e5",methods=['GET'])
def e5():
    return render_template('pages/echarts/e5.html', switch_url=url_for('page_none'))

@app.route("/switches")
@app.route("/switches/")
def choose():
    if request.args.get("switch") == "":
        return redirect("/e5")
    elif request.args.get("switch") == "评分":
        show_score_top()
        return render_template('pages/echarts/e5.html', switch_url=url_for('scores'))
    elif request.args.get("switch") == "评论人数":
        show_comment_top()
        return render_template('pages/echarts/e5.html', switch_url=url_for('comments'))

@app.route("/scores")
def scores():
    return render_template('pages/iframes/score_top.html')

@app.route("/comments")
def comments():
    return render_template('pages/iframes/comment_top.html')

# 饼状图e6
@app.route("/e6",methods=['GET'])
def e6():
    showtime=select_showtime()
    return render_template('pages/echarts/e6.html',showtime=showtime, showtime_url=url_for('page_none'))

@app.route("/groups")
@app.route("/groups/")
def shows():
    if request.args.get("showtime") == "":
        return redirect("/e6")
    else:
        showtime = select_showtime()
        print(showtime)
        showyear = int(request.args.get("showtime"))
        showtime_group(showyear)
        return render_template('pages/echarts/e6.html', showtime=showtime, group_url=url_for('group_url'))

@app.route("/group_url")
def group_url():
    return render_template('pages/iframes/showtime_group.html')

# 词云图e7
@app.route("/e7",methods=['GET'])
def e7():
    return render_template('pages/echarts/e7.html', switch_url=url_for('page_none'))

@app.route("/searchs")
@app.route("/searchs/")
def searchs():
    if request.args.get("search") == "" or request.args.get("cut") == "":
        return redirect("/e7")
    else:
        search = request.args.get("search")
        cut = int(request.args.get("cut"))
        film_search(search, cut)
        return render_template('pages/echarts/e7.html', search_url=url_for('search_url'))

@app.route("/search_url")
def search_url():
    return render_template('pages/iframes/film_search.html')



if __name__ == '__main__':
    app.run(DEBUG=True)
