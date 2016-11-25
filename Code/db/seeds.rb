require_relative('../models/pet')
require_relative('../models/owner')

require ('pry-byebug')

Pet.delete_all()
Owner.delete_all()

owner1=Owner.new({"name"=>"John Smith"})
owner1.save()
owner2=Owner.new({"name"=>"Mary Jane Watson"})
owner2.save()
owner3=Owner.new({"name"=>"Davros"})
owner3.save()

owners=Owner.all()

pet1=Pet.new({"name"=>"Jackie","breed"=>"Rabbit","days_in_captivity"=>45,"owner_id"=>owner1.id})
pet1.save()
pet2=Pet.new({"name"=>"Sophie","breed"=>"Dog","days_in_captivity"=>15,"owner_id"=>owner2.id})
pet2.save()
pet3=Pet.new({"name"=>"Not A Dalek","breed"=>"Cat","days_in_captivity"=>600,"owner_id"=>owner3.id})
pet3.save()

pets=Pet.all()

binding.pry
nil