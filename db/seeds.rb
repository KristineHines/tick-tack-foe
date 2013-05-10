require 'faker'

# create a few users
User.create :name => 'testuser', :email => 'test@dbc.com', :password => 'password'

50.times do
  User.create :name => Faker::Name.name, :email => Faker::Internet.email, :password => 'password',:logged_in => [true,false].sample
end
