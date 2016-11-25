require_relative('../db/sql_runner')

class Pet

  attr_reader(:name, :breed, :days_in_captivity, :owner_id, :id)

  def initialize(options)
    @name=options['name']
    @breed=options['breed']
    @days_in_captivity=options['days_in_captivity'].to_i
    @owner_id= nil || options['owner_id'].to_i
    @id=nil || options['id'].to_i
  end

  def save()
    sql="INSERT INTO pets (name, breed, days_in_captivity, owner_id) VALUES ('#{@name}','#{@breed}',#{@days_in_captivity},#{@owner_id}) RETURNING *"
    names=SqlRunner.run(sql)
    @id = names.first()['id'].to_i
  end

  def self.all()
    sql="SELECT * FROM pets"
    pets = SqlRunner.run(sql)
    result = pets.map { |pet| Pet.new(pet) }
    return result
  end

  def self.find(id)
    sql="SELECT * FROM pets WHERE id = #{id}"
    pet= SqlRunner.run(sql)
    result=Pet.new(pet.first)
    return result
  end

  def self.delete_all()
    sql="DELETE FROM pets"
    SqlRunner.run(sql)
  end

  def is_adoptable()
    sql= "SELECT * FROM pets"
    pets= SqlRunner.run(sql)
    for pet in pets
     if @days_in_captivity >30
       pet = "This pet is adoptable."
     else
        pet = "This pet is not adoptable as it has not been with us for enough time."
     end
     return pet
    end
  end

end