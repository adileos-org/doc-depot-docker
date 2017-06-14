apache_php_dev_exists=$(docker images | grep apache-php-dev | wc -l)

if [ $apache_php_dev_exists  -eq 0 ]; then
	docker build apache-php-dev -t apache-php-dev
fi


docker run -d -p 8080:80 -v /vagrant/src/cot:/var/www/html apache-php-dev

docker run -d -p 3306:3306 -v /vagrant/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=azerty mysql