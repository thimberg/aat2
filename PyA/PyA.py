#!/usr/bin/env python
# -*- coding: utf-8 -*-
### coding:utf-8

from crawler import Crawler
from downloader import DownloadManager
import lxml.html
import urlparse
import sys
import codecs

class MyRule():
    def __init__(self ):
        self.type = ''
        self.key = ''

    def __init__(self, type, key):
        self.type = type
        self.key = key


convert_tuples = [
 (u'\u00a6',u'\u007c'),#broken bar=>vertical bar
 (u'\u2014',u'\u2015'),#horizontal bar=>em dash
 (u'\u2225',u'\u2016'),#parallel to=>double vertical line
 (u'\uff0d',u'\u2212'),#minus sign=>fullwidth hyphen minus
 (u'\uff5e',u'\u301c'),#fullwidth tilde=>wave dash
 (u'\uffe0',u'\u00a2'),#fullwidth cent sign=>cent sign
 (u'\uffe1',u'\u00a3'),#fullwidth pound sign=>pound sign
 (u'\uffe2',u'\u00ac'),#fullwidth not sign=>not sign
]

def unsafe2safe(string):
    for unsafe, safe in convert_tuples:
        string = string.replace(unsafe, safe)
    return string


def gnew():
    sys.stdout = codecs.getwriter('shift_jis')(sys.stdout)
    fout  = codecs.open('news-google.txt', 'w', 'utf-8')

    url = "http://news.google.co.jp/"
    downloader = DownloadManager()

    error_msg, url, redirected_url, html = downloader.download(url)
    #print error_msg, url, redirected_url, len(html)

    doc = lxml.html.fromstring(html)

    elements = doc.findall('./body//div') 
    newsheads = doc.find_class("esc-lead-article-title")
    for e in newsheads:
        fout.write(e.text_content().strip())
        fout.write("\n")

    fout.close()

def snew():
    fout  = codecs.open('news-sohu.txt', 'w', 'utf-8')
    url = "http://news.sohu.com/"
    downloader = DownloadManager()
    error_msg, url, redirected_url, html = downloader.download(url)

    doc = lxml.html.fromstring(html)

    elements = doc.findall('./body//div') 
    newsheads = doc.find_class("news")
    for e in newsheads:
        fout.write(e.text_content().strip())
        fout.write("\r\n")

    newslist = doc.find_class("list14")
    for e in newslist:
        fout.write(e.text_content().strip())
        fout.write("\r\n")

    fout.close()

def getList(url, rule):
    fi = url.replace("http://","")
    fi = fi.rstrip('/')
    fi = fi.replace(".", "_")
    fi = fi.replace("/", "_")
    fi = fi + ".txt"

    fout  = codecs.open(fi, 'w', 'utf-8')
    downloader = DownloadManager()
    error_msg, url, redirected_url, html = downloader.download(url)

    doc = lxml.html.fromstring(html)

    elements = doc.findall('./body//div') 

    for r in rule:
        if r.type == 'class':
            newsheads = doc.find_class(r.key)
            for e in newsheads:
                fout.write(e.text_content().strip())
                fout.write("\r\n")

    fout.close() 

#rule = {'class':'news','class':'list14'}
rule = []
rule.append(MyRule('class','news'))
rule.append(MyRule('class','list14'))


getList("http://news.sohu.com/",rule)

rule = []
rule.append(MyRule('class','esc-lead-article-title'))
getList("http://news.google.co.jp/",rule)

#snew()


#    t = unsafe2safe(e.text_content())
#    print t


#for e in elements:
#    print "ELEMETNS =========================================="
#    print lxml.html.tostring(e,pretty_print=True)
#    print "ITEMS------------------------------------------"
#    print e.items()
#    print "TEXT-CONTENT-----------------------------------"
#    print e.text_content().encode('utf_8')
#    print "CLASSES-----------------------------------"
#    classes = e.find_class("esc-lead-article-title")
#    for c in classes:
#        lxml.html.tostring(c)


#for elem, attr, link, pos in doc.iterlinks():
#    absolute = urlparse.urljoin(url, link.strip())
#    print elem.tag ,attr, absolute, pos

#mycrawler = Crawler()
#seeds = ['http://www.google.com/'] # list of url
#mycrawler.add_seeds(seeds)
#rules = {'^(http://.+google\.com)(.+)$':[ '^(http://.+google\.com)(.+)$' ]}
##your crawling rules: a dictionary type, 
##key is the regular expressions for url, 
##value is the list of regular expressions for urls which you want to follow from the url in key.
#mycrawler.add_rules(rules)
#mycrawler.start() # start crawling



