﻿
--
-- Table structure for table "users"
--

DROP TABLE IF EXISTS "users";
CREATE TABLE "users" (
  "username" varchar NOT NULL,
  "password" varchar NOT NULL,
  "enabled" int NOT NULL,
  PRIMARY KEY ("username")
) ;

--
-- Inserting data for table "users"
--

INSERT INTO "users" 
VALUES 
('john','{noop}test123',1),
('mary','{noop}test123',1),
('susan','{noop}test123',1);



DROP TABLE IF EXISTS "authorities";
CREATE TABLE "authorities" (
  "username" varchar(50) NOT NULL,
  "authority" varchar(50) NOT NULL,
  CONSTRAINT "authorities_idx_1" UNIQUE ("username","authority")  ,
  CONSTRAINT "authorities_ibfk_1" FOREIGN KEY ("username") REFERENCES "users" ("username")

 ) ;

--
-- Inserting data for table "authorities"
--

INSERT INTO "authorities" 
VALUES 
('john','ROLE_EMPLOYEE'),
('mary','ROLE_EMPLOYEE'),
('mary','ROLE_MANAGER'),
('susan','ROLE_EMPLOYEE'),
('susan','ROLE_ADMIN');

