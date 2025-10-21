# sqlite_web_client


SQLITE_WEB_CLIENT

Sun Oct 18 11:49:25 PM +03 2025

```bash


mkdir -pv /opt /www
cd /opt && wget https://github.com/hani86400/sqlite_web_client/archive/refs/heads/main.zip
export FILES='/opt/sqlite_web_client-main' 
rm -rf "${FILES}" ; cd /opt && unzip main.zip
mv "${FILES}/etc/caddy" /etc # OK
mv "${FILES}/html"      /www #OK
mv "${FILES}/etc/systemd/system/"*.service /etc/systemd/system/ # OK find /etc/systemd/system | grep 'caddy\|python_cgi\|sqlite_web'


mkdir -p /etc/caddy /var/lib/caddy /var/log/caddy
useradd --system --user-group --home-dir /var/lib/caddy --shell /usr/sbin/nologin caddy
chown -R caddy:caddy /etc/caddy /var/lib/caddy /var/log/caddy

rm -rf ${FILES}" /www/*

ls -l /etc/caddy /var/lib/caddy /var/log/caddy /www /html  /etc/systemd/system/*.service

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
