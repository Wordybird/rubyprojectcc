#require_relative('../models/pet')
require_relative('../models/owner')

require ('pry-byebug')

#Pet.delete_all()
Owner.delete_all()

owner1=Owner.new({"name"=>"John Smith"})
owner1.save()

owners=Owner.all()



binding.pry
nil