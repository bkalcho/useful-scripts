#!/usr/bin/env python
__author__ = 'kalcho'
#DATE: 27-Jul-2017
#SYNOPSIS: Download pdf files found on target website

import requests
from lxml import html

# URL of the page we want to scrape
url = "http://www.sandag.org"
# Perform REST request of type GET, and do not allow url redirects
res = requests.get(url, allow_redirects=False)
# HTML source code of the target webpage
source_code = res.content
# create HTML element
html_elem = html.fromstring(source_code)
html_elem.make_links_absolute(url, resolve_base_href=True)
elements = html_elem.iterlinks()
num_pdf = 0
for el in elements:
    link = el[2]
    file_ext = link.split('.')[-1]
    if file_ext == 'pdf':
        download_dir = "downloaded_pdfs\pdf%s.pdf" % num_pdf
        fd = open(download_dir, "wb")
        r = requests.get(link)
        pdf = r.content
        fd.write(pdf)
        fd.close()
        num_pdf += 1