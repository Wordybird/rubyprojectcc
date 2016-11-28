require('sinatra')
require('sinatra/contrib/all')
require_relative('models/pet.rb')
require_relative('models/owner.rb')

get '/' do
  return "Welcome to the animal shelter! Add /pets in your url bar to see the animals in our care."
end

get '/pets' do
  @pets=Pet.all()
  @owners=Owner.all()
  erb(:show)
end