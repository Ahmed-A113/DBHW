-- Insert the information for Fluffy into the petEvent table
INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Fluffy', '2020-10-15', 'vet', 'antibiotics');

-- Insert the information for Hammy into the petPet table
INSERT INTO petPet (petname, owner, species, gender, birth)
VALUES ('Hammy', 'Diane', 'hamster', 'M', '2010-10-30');

-- Insert the information for Hammy's event into the petEvent table
INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Hammy', '2020-10-15', 'vet', 'antibiotics');

-- Fluffy had 5 kittens, 2 of which are male 
INSERT INTO petPet (petname, owner, species, gender, birth)
VALUES 
  ('Fluffy Kitten 1', 'Owner Name', 'cat', 'M', '2020-10-01'),  -- Male kitten
  ('Fluffy Kitten 2', 'Owner Name', 'cat', 'M', '2020-10-01'),  -- Male kitten
  ('Fluffy Kitten 3', 'Owner Name', 'cat', 'F', '2020-10-01'),  -- Female kitten
  ('Fluffy Kitten 4', 'Owner Name', 'cat', 'F', '2020-10-01'),  -- Female kitten
  ('Fluffy Kitten 5', 'Owner Name', 'cat', 'F', '2020-10-01');  -- Female kitten

-- Claws broke a rib on 1997-08-03
INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Claws', '1997-08-03', 'injury', 'broke the rib');

-- Update Puffball's death date
UPDATE petPet
SET death = '2020-09-01'
WHERE petname = 'Puffball';

-- Remove Harold's dog from the petPet table 
DELETE FROM petPet
WHERE owner = 'Harold' AND petname = 'DogName';
