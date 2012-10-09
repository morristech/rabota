PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE android_metadata (locale TEXT);
INSERT INTO "android_metadata" VALUES('en_US');
CREATE TABLE tasks (_id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT NOT NULL,start INTEGER NOT NULL,end INTEGER,status INTEGER NOT NULL DEFAULT 0,hourly_rate REAL NOT NULL);
INSERT INTO tasks VALUES(1,'First look at Rabota. This test task will end in 15 minutes and can be safely deleted',1349632096500,1349632996500,3,60.0);
INSERT INTO tasks VALUES(2,'EPOS-1015',1341216000424,1341403200000,3,60.0);
INSERT INTO tasks VALUES(4,'Scrum: Estimations with Sabine',1341241200563,1341246600563,3,60.0);
INSERT INTO tasks VALUES(5,'Bugfix: bugs in search basket page EPOS-1798',1341403200167,1341417600168,3,60.0);
INSERT INTO tasks VALUES(6,'Bugfix: misc., EPOS-1803',1341475200632,1341849600000,3,60.0);
INSERT INTO tasks VALUES(7,'Scrum: Planning',1341907200036,1341918000036,3,60.0);
INSERT INTO tasks VALUES(8,'EPOS-1544: improvement - feasibility of JQuery Mobile for IOS touch devices',1341918000006,1342450800000,3,60.0);
INSERT INTO tasks VALUES(9,'Scrum: Retrospective',1342450800366,1342454400367,3,60.0);
INSERT INTO tasks VALUES(10,'Scrum: Planning',1342512000265,1342522800266,3,60.0);
INSERT INTO tasks VALUES(11,'EPOS-1852: inlife - ePOS touch - as PO I want to create a start page for EPOS touch',1342522800913,1343059200000,3,60.0);
INSERT INTO tasks VALUES(13,'Scrum: Demo',1343116800232,1343124000232,3,60.0);
INSERT INTO tasks VALUES(14,'EPOS-1851: inlife - ePOS touch - as PO I want to have a CSA based theme created for JQuery Mobile',1343124000349,1343394000000,3,60.0);
INSERT INTO tasks VALUES(15,'Scrum: ScrumMaster',1343376000316,1343381400317,3,60.0);
INSERT INTO tasks VALUES(16,'EPOS-1855: inlife - ePOS touch - as PO I want to have a customer data page created for JQuery Mobile',1343394000332,NULL,1,60.0);
CREATE TABLE task_parts (_id INTEGER PRIMARY KEY AUTOINCREMENT, task_id INTEGER NOT NULL, comment TEXT, start INTEGER NOT NULL, end INTEGER);
INSERT INTO "task_parts" VALUES(1,1,NULL,1349632096500,1349632996500);
INSERT INTO "task_parts" VALUES(2,2,'',1341216000424,1341241200424);
INSERT INTO "task_parts" VALUES(4,4,'',1341241200563,1341246600563);
INSERT INTO "task_parts" VALUES(5,2,NULL,1341302400000,1341333000000);
INSERT INTO "task_parts" VALUES(6,2,NULL,1341388800000,1341403200000);
INSERT INTO "task_parts" VALUES(7,5,'',1341403200167,1341417600168);
INSERT INTO "task_parts" VALUES(8,6,'',1341475200632,1341505800633);
INSERT INTO "task_parts" VALUES(9,6,NULL,1341820800000,1341849600000);
INSERT INTO "task_parts" VALUES(10,7,'',1341907200036,1341918000036);
INSERT INTO "task_parts" VALUES(11,8,'',1341918000006,1341936000007);
INSERT INTO "task_parts" VALUES(12,8,NULL,1341993600000,1342022400000);
INSERT INTO "task_parts" VALUES(13,8,NULL,1342166400000,1342195200000);
INSERT INTO "task_parts" VALUES(14,8,NULL,1342425600000,1342450800000);
INSERT INTO "task_parts" VALUES(15,9,'',1342450800366,1342454400367);
INSERT INTO "task_parts" VALUES(16,10,'',1342512000265,1342522800266);
INSERT INTO "task_parts" VALUES(17,11,'',1342522800913,1342544400914);
INSERT INTO "task_parts" VALUES(18,11,NULL,1342598400000,1342627200000);
INSERT INTO "task_parts" VALUES(19,11,NULL,1342684800000,1342713600000);
INSERT INTO "task_parts" VALUES(20,11,NULL,1342771200000,1342800000000);
INSERT INTO "task_parts" VALUES(21,11,NULL,1343030400000,1343059200000);
INSERT INTO "task_parts" VALUES(23,13,'',1343116800232,1343124000232);
INSERT INTO "task_parts" VALUES(24,14,'',1343124000349,1343147400350);
INSERT INTO "task_parts" VALUES(25,14,NULL,1343203200000,1343232000000);
INSERT INTO "task_parts" VALUES(26,14,NULL,1343289600000,1343322000000);
INSERT INTO "task_parts" VALUES(27,14,NULL,1343381400000,1343394000000);
INSERT INTO "task_parts" VALUES(28,15,'',1343376000316,1343381400317);
INSERT INTO "task_parts" VALUES(29,16,'',1343394000332,1343404800333);
INSERT INTO "task_parts" VALUES(30,16,NULL,1343635200000,1343665800000);
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('tasks',16);
INSERT INTO "sqlite_sequence" VALUES('task_parts',32);
COMMIT;
