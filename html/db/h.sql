PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;

DROP   TABLE IF     EXISTS H;
CREATE TABLE IF NOT EXISTS H(
  N INTEGER PRIMARY KEY AUTOINCREMENT,
  C TEXT
);
INSERT INTO H VALUES(1,'ping 192.168.1.1');
INSERT INTO H VALUES(2,'ip a');
INSERT INTO H VALUES(3,'sudo du . --max-depth=1 | sort -h -k 1');
INSERT INTO H VALUES(4,'df -h .');
INSERT INTO H VALUES(5,'/usr/bin/env python');
INSERT INTO H VALUES(6,'whereis python');
INSERT INTO H VALUES(7,'/usr/bin/env /usr/bin/python3.7');
INSERT INTO H VALUES(8,'export pythone=''/usr/bin/python3.7''');
INSERT INTO H VALUES(9,'lsattr');
INSERT INTO H VALUES(10,'sudo chattr +i *.jar');
INSERT INTO H VALUES(11,'systemctl get-default');
INSERT INTO H VALUES(12,'systemctl list-timers');
INSERT INTO H VALUES(13,'systemctl list-units');
INSERT INTO H VALUES(14,'cat Fedora-KDE-42-1.1-x86_64-CHECKSUM');
INSERT INTO H VALUES(15,'sha256sum Fedora-KDE-Desktop-Live-42-1.1.x86_64.iso');
INSERT INTO H VALUES(16,'tail /var/log/syslog');
INSERT INTO H VALUES(17,'sudo xed stop_alarm.sh');
INSERT INTO H VALUES(18,'sudo chmod +x -R /home/web/cgi-bin');
INSERT INTO H VALUES(19,'/usr/bin/sqlite3 -echo -column -header "${SQLITE_MAIN_FILE_NAME}" < "${FILE_SRC_SQL}"');
INSERT INTO H VALUES(20,'cd sqlite_web_client/');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('H',20);

COMMIT;
