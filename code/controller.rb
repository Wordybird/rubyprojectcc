require('sinatra')
require('sinatra/contrib/all')
require_relative('models/pet.rb')
require_relative('models/owner.rb')

get '/' do
  erb(:index)
end

get '/pets' do
  @pets=Pet.all()
  @owners=Owner.all()
  erb(:show)
end

get '/pets/:id' do
  @pet=Pet.find(params[:id])
  erb(:show_pet)
end