
# start database
service mysql start

# create database
mysql -e "create database zoomdata"
mysql zoomdata < /usr/local/lib/python3.7/site-packages/zoom/sql/setup_mysql.sql
mysql -e "create user zoomuser identified by 'zoompass';"
mysql -e "grant all on zoomdata.* to zoomuser@'%';"

# configure site
mkdir -p /work/web/sites/localhost
cat <<EOT | tee "/work/web/sites/localhost/site.ini"
[site]
name=Zoom Workstation

[database]
dbname=zoomdata
dbuser=zoomuser
dbpass=zoompass
EOT

# start server
zoom serve /work/web
