import requests
from bs4 import BeautifulSoup
from lxml import html

etree = html.etree
import csv

# 请求头
headers = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36"
}
hrefs = []


# 爬取豆瓣电影TOP250的url
# 获取电影详情页url
def get_film_url(url):
    try:
        r = requests.get(url, headers=headers)
        selector = etree.HTML(r.text)
        movie_hrefs = selector.xpath('//div[@class="hd"]/a/@href')  # 电影的详情地址
        for i in range(0, len(movie_hrefs)):
            hrefs.append(movie_hrefs[i])
    except Exception as e:
        print(e)


# 保存电影链接url
def save_url():
    try:
        # 获取链接
        for href in hrefs:
            # 存入csv
            file_path = "./豆瓣电影TOP250链接.csv"
            with open(file_path, "a+", newline='', encoding='gb18030') as csvfile:
                writer = csv.writer(csvfile)
                writer.writerow([href])
    except Exception as e:
        print(e)


def main():
    # 爬取豆瓣电影TOP250的url
    for i in range(0, 250, 25):
        url = "https://movie.douban.com/top250?start=" + str(i) + ""
        get_film_url(url)
    save_url()


if __name__ == '__main__':
    main()
