def get_input(display_name, default_val)
  puts "Please enter #{display_name} (or press enter to use #{default_val}):"
  input = STDIN.gets.chomp
  input = default_val if input.blank?

  input
end

puts "Creating Sample User....."

first_name = get_input("first name", "Foo")
last_name  = get_input("last name",  "Bar")
email      = get_input("email",      "foo@bar.com")
password   = get_input("password",   "foobar")

u = User.create(
  email:                 email,
  password:              password,
  password_confirmation: password,
  first_name:            first_name,
  last_name:             last_name
)

puts "User = #{u.inspect}"
u.save!
puts "Saved!"
