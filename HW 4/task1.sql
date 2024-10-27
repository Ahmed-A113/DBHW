-- DROP DATABASE IF EXISTS pet_database;
-- CREATE DATABASE pet_database;
-- USE pet_database;

-- DROP TABLE IF EXISTS petPet, petEvent;

-- Up to the next CUTOFF POINT should be in task1.sql
CREATE TABLE petPet (
  petname VARCHAR(20) NOT NULL,      -- Name of the pet (Primary Key)
  owner VARCHAR(45) NOT NULL,        -- Name of the pet's owner
  species ENUM('M', 'F') NOT NULL,   -- Species of the pet (M or F)
  gender CHAR(1) NOT NULL,            -- Gender of the pet (M/F)
  birth DATE NOT NULL,                -- Date of birth of the pet
  death DATE,                        -- Date of death of the pet (optional)
  PRIMARY KEY (petname)               -- Primary key for the pet table
);

CREATE TABLE petEvent (
  petname VARCHAR(20) NOT NULL,      -- Name of the pet (foreign key from petPet)
  eventdate DATE NOT NULL,           -- Date of the event
  eventtype VARCHAR(15) NOT NULL,     -- Type of event (e.g., vaccination)
  remark VARCHAR(255) DEFAULT NULL,   -- Additional remarks about the event (optional)
  PRIMARY KEY (petname, eventdate),  -- Composite primary key to uniquely identify each event
  FOREIGN KEY (petname) REFERENCES petPet(petname) -- Foreign key linking to petPet
);
