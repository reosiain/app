#!/bin/bash

#1. Build billy image
cd billy || exit
pipenv lock -r > requirements.txt
docker build -t reosiain/billy:billy .

#2. Build rss-feed image
cd ..
cd rss-feed || exit
pipenv lock -r > requirements.txt
docker build -t reosiain/billy:rss_feed .

#3. Build sentiment_app image
cd ..
cd sentiment_app || exit
pipenv lock -r > requirements.txt
docker build -t reosiain/billy:sentiment_app .

#4. Build tgbot image
cd ..
cd tgbot || exit
pipenv lock -r > requirements.txt
docker build -t reosiain/billy:tgbot .
