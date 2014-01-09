class User
  attr_accessor :name, :email

  def initialize(attributes = {})
    @name = attributes[:name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end
end
#
#example = User.new
#example.name = "Example Name"
#example.email = "example_name@email.com"
#puts example.formatted_email
#
#user2 = User.new(name: "Michael Hartl", email: "michael.hartl@email.com")
#puts user2.formatted_email

#def string_shuffle(s)
#  s.split('').shuffle.join
#end
#
#puts string_shuffle("foobar")

#class String
#  def shuffle
#    self.split('').shuffle.join
#  end
#end
#
#puts "foobar".shuffle

#person1 = {first: "Jim", last: "Bob"}
#person2 = {first: "Mary", last: "Jane"}
#person3 = {first: "Bo", last: "Peep"}
#params = {father: person1, mother: person2, child: person3}
#
#puts params[:father][:first]

