cd /vagrant/sites/
mkdir $1
cd $1
mkdir public_html
sudo vhost -s $1.192.168.22.10.xip.io -d /vagrant/sites/$1/public_html
sudo a2ensite $1.192.168.22.10.xip.io
sudo service apache2 restart

echo "create database $1" | mysql

cp /vagrant/sites/sitemap/public_html/index.php /vagrant/sites/$1/public_html
