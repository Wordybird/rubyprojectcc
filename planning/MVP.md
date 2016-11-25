MVP for Animal Shelter:

Users:
Store id (primary key, SERIAL8), name (VARCHAR).
Create database of owners.

Pets:
Store id (primary key, SERIAL8), name(VARCHAR), breed(VARCHAR), days in care (INT2) and owner_id as a foreign key.
Create database of pets.
Link pets with owners via owner_id and find owners by their id.
Function to list pet as adoptable or not depending on how many days they have been cared for in the shelter.

Extra Functionality:
Update and delete database of pets and owners as necessary.
Functionality to return list of pets as JSON.
Ability to add pictures to list of pets and any future pet that is added.