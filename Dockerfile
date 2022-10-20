FROM ubuntu/nginx:1.18-20.04_beta
ADD pichan.conf /etc/nginx/conf.d/default.conf
RUN apt -y update
RUN apt -y install software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt install -y php8.1-bcmath php8.1-ctype php8.1-curl php8.1-cli php8.1-dev php8.1-fpm \
    php8.1-mbstring php8.1-mcrypt php8.1-mysql php8.1-oauth php8.1-redis php8.1-xml php-tokenizer \
    php8.1-igbinary php8.1-gd php8.1-imagick
