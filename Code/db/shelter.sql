DROP TABLE IF EXISTS pets;
DROP TABLE IF EXISTS owners;

CREATE TABLE owners (
  name VARCHAR(255),
  id SERIAL8 primary key
);

CREATE TABLE pets (
  name VARCHAR(255),
  breed VARCHAR(255),
  days_in_captivity INT2,
  owner_id INT2 references owners(id),
  id SERIAL8 primary key
);