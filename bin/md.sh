rm -rf /vagrant/backups/databases/*

for db in $(mysql -e 'show databases' -s --skip-column-names); do mysqldump --lock-tables=false $db | gzip > "/vagrant/backups/databases/$db-$(date +%Y-%m-%d-%H).gz"; done
