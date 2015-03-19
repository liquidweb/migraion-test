-- 
-- Created by SQL::Translator::Producer::SQLite
-- Created on Wed Dec 10 11:45:50 2014
-- 

;
BEGIN TRANSACTION;
--
-- Table: album
--
CREATE TABLE album (
  isbn text,
  id INTEGER PRIMARY KEY NOT NULL,
  artist integer(16) NOT NULL,
  title varchar(256) NOT NULL,
  rank integer(16) NOT NULL DEFAULT 0
);
COMMIT;
