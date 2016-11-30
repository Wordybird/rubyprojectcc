require_relative('../db/sql_runner')

class Owner

  attr_reader(:name, :id)

  def initialize(options)
    @name = options['name']
    @id = nil || options['id'].to_i
  end

  def save()
    sql = "INSERT INTO owners (name) VALUES ('#{@name}') RETURNING *"
    names = SqlRunner.run(sql)
    @id = names.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM owners"
    owners = SqlRunner.run(sql)
    result = owners.map { |owner| Owner.new(owner) }
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM owners WHERE id = #{id}"
    owner = SqlRunner.run(sql)
    result = Owner.new(owner.first)
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM owners"
    SqlRunner.run(sql)
  end

end