#/usr/bin/python

import os
import sys
import json
import time

try:
    # For Python 3.0 and later
    from urllib.request import Request, urlopen, urlretrieve
except ImportError:
    # Fall back to Python 2's urllib2
    from urllib2 import Request, urlopen
    from urllib import urlretrieve
    
from config import *

directory=os.path.dirname(os.path.realpath(__file__)) + '/pictures/'
today = time.strftime("%Y-%m-%d")

req = Request('https://api.momentumdash.com/feed/bulk?syncTypes=backgrounds&localDate=' + today)
req.add_header('Host', 'api.momentumdash.com')
req.add_header('Accept', '*/*')
req.add_header('X-Momentum-ClientId', client_id)
req.add_header('X-Momentum-Version', '0.91.1')
req.add_header('Content-Type', 'application/json')

response = urlopen(req)

data = json.loads(response.read())

if not os.path.exists(directory):
    os.makedirs(directory)

for bg in data['backgrounds']:
	name = bg['filename'].rsplit('/', 1)[-1]
	path = directory + name+".png"
	print (name)
	#no file type data, so assume .png
	if not os.path.exists(path):
		urlretrieve(bg['filename'], path)
