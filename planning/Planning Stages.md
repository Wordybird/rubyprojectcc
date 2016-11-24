# Plan

The Scottish Animal Shelter accepts orphaned animals and takes care of them until they can be adopted by a new owner. The shelter has a list of potential new owners for the animals. Animals may take a while to be trained up and available for adoption.

They are looking for a management system to keep track of their animals and owners.

MVP: 

- A list of all their animals and their admission date
- Mark an animal as being adoptable/not adoptable
- Assign an animal to a new owner
- List all the owners and their adopted animals

Extensions:

- Update and Delete for models
- Functionality to add and remove animals 
- Functionality to add and remove owners
- Add a route to return the list of animals as JSON

Part 1:
- Create a Pet Shelter database.
- Create a table for Pets.

Part 2
 - Create a ruby model that can save a pet's details.
 - Create some seed data to populate the database with pets.

Part 3
- Add methods to a pet to
  - find all the pets.
  - find a pet by id.

Part 4
- Create a view to show all the pets.

Part 5:
- Create a table for Owners.

Part 6
- Create a ruby model that can save an owner's details.
- Create some seed data to populate the database with owners.

Part 7
- Add methods to a owner to
- find all the owners.
- find an owner by id.

Part 8
- Create a view to show all the owners.

Part 9
- Link pets to a given owner with owner id as a foreign key, which will be nil if not filled out.

Part 10
- Update pets with an owner_id.

Part 11
- Create function to identify pet by owner.

Part 12
-Create function to identify owner by pet.

Part 13
- Update pet view to include owner_id.
