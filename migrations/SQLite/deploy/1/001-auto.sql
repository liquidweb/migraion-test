-- 
-- Created by SQL::Translator::Producer::SQLite
-- Created on Wed Dec 10 11:35:19 2014
-- 

;
BEGIN TRANSACTION;
--
-- Table: album
--
CREATE TABLE album (
  id INTEGER PRIMARY KEY NOT NULL,
  artist integer(16) NOT NULL,
  title varchar(256) NOT NULL,
  rank integer(16) NOT NULL DEFAULT 0
);
COMMIT;
