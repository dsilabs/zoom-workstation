
# start database
service mysql start

# create database and site
mkdir -p /work/web/sites/localhost
cd /work
zoom database -e mysql -u root -d zoomdata setup localhost

zoom serve /work/web