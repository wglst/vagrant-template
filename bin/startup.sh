rm -rf /vagrant/DOWN
touch /vagrant/UP
cd /vagrant/public_html
wp db export --allow-root
