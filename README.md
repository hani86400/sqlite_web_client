# sqlite_web_client


SQLITE_WEB_CLIENT

Sun Oct 18 11:49:25 PM +03 2025

```bash


mkdir -pv /opt /var/lib/caddy /var/log/caddy /var/www
ls -ld    /opt /var/lib/caddy /var/log/caddy /var/www/html /etc/caddy 
cd /opt && wget https://github.com/hani86400/sqlite_web_client/archive/refs/heads/main.zip
export FILES='/opt/sqlite_web_client-main' 
rm -rf "${FILES}"    ; cd /opt && unzip main.zip
rm -rf /etc/caddy    ; mv "${FILES}/etc/caddy"    /etc     # OK
rm -rf /var/www/html ; mv "${FILES}/var/www/html" /var/www # OK
mv "${FILES}/etc/systemd/system/"*.service /etc/systemd/system/ # OK find /etc/systemd/system | grep 'caddy\|python_cgi\|sqlite_web'



useradd --system --user-group --home-dir /var/lib/caddy --shell /usr/sbin/nologin caddy
touch     /var/log/caddy/access.log
chmod 644 /var/log/caddy/access.log
chown -R caddy:caddy /etc/caddy /var/lib/caddy /var/log/caddy


useradd -r -U -m -d /var/www/html -s /usr/sbin/nologin webuser
chown -R webuser:webuser /var/www/html
chmod -R 750 /var/www/html


systemctl daemon-reload 

systemctl start  sqlite_web 
systemctl status sqlite_web --no-pager 
journalctl -u webuser --no-pager | tail -n 40
cat /etc/systemd/system/sqlite_web.service
PNO='8081' ; ss -tuln | grep "${PNO}" ; lsof -i :${PNO}
ss -tuln | grep 8081 ; lsof -i :8081

PNO='1433' ; ss -tuln | grep "${PNO}" ; lsof -i :${PNO}


### --- ### --- ###
curl -v http://127.0.0.1:82/cgi-bin/multi_sql.py
rm -rf ${FILES}" /www/*

ls -l /etc/caddy /var/lib/caddy /var/log/caddy /var/www/html  
/etc/systemd/system/*.service

nohup sqlite_web -H 0.0.0.0 -p 84 /path/to/your.db > /var/log/sqlite_web.log 2>&1 &
      sqlite_web mydb.sqlite --host 0.0.0.0 --port 443 --ssl
sudo chown youruser:www-data /db/sample.sqlite3
sudo chmod 664 /db/sample.sqlite3
sudo systemctl daemon-reload
sudo systemctl enable sqlite_web
sudo systemctl start sqlite_web
sudo chown $(whoami) $(whoami) /db/sample.sqlite3


caddy version
sudo journalctl -u caddy -n 50
sudo journalctl -u caddy --no-pager | tail -n 40
sudo chmod +x /usr/local/bin/caddy
sudo chmod 755 /etc/caddy
# Remove old Caddy if exists
sudo rm -f /usr/bin/caddy /usr/local/bin/caddy || true
sudo touch /var/log/caddy/access.log
sudo chmod 644 /var/log/caddy/access.log
sudo caddy fmt --overwrite /etc/caddy/Caddyfile
sudo systemctl reload caddy

sudo systemctl start sqlite_web.service
sudo systemctl start python_cgi.service

sudo useradd -r -s /bin/false webuser
sudo chown -R webuser:webuser /db
sudo chmod -R 770 /db








#clear ; LC_ALL=C tree sqlite_web_client-main/
sqlite_web_client-main/
|-- README.md
|-- etc
|   |-- caddy
|   |   `-- Caddyfile
|   `-- systemd
|       `-- system
|           |-- caddy.service
|           |-- python_cgi.service
|           `-- sqlite_web.service
`-- html
    |-- cgi-bin
    |   `-- multi_sql.py
    |-- db
    |   |-- Chinook_Sqlite.sql
    |   |-- Chinook_Sqlite.sqlite
    |   |-- e.sql
    |   |-- h.sql
    |   |-- k.sql
    |   |-- m.sql
    |   |-- p.sql
    |   `-- sample.sqlite3
    |-- index.html
    `-- multi_sql.html

8 directories, 16 files

#find sqlite_web_client-main/
sqlite_web_client-main/.gitignore
sqlite_web_client-main/README.md
sqlite_web_client-main/html/multi_sql.html
sqlite_web_client-main/html/index.html
sqlite_web_client-main/html/db/p.sql
sqlite_web_client-main/html/db/sample.sqlite3
sqlite_web_client-main/html/db/Chinook_Sqlite.sql
sqlite_web_client-main/html/db/e.sql
sqlite_web_client-main/html/db/k.sql
sqlite_web_client-main/html/db/Chinook_Sqlite.sqlite
sqlite_web_client-main/html/db/m.sql
sqlite_web_client-main/html/db/h.sql
sqlite_web_client-main/html/cgi-bin/multi_sql.py
sqlite_web_client-main/etc/systemd/system/caddy.service
sqlite_web_client-main/etc/systemd/system/python_cgi.service
sqlite_web_client-main/etc/systemd/system/sqlite_web.service
sqlite_web_client-main/etc/caddy/Caddyfile

```
