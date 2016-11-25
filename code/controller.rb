require('sinatra')
require('sinatra/contrib/all')
require_relative('models/pet.rb')
require_relative('models/owner.rb')

get '/' do
  @pets=Pet.all()
  @owners=Owner.all()
  erb(:index)
end