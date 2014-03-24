# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#User.create(:name => 'sadmin', :role => 'sadmin', :password => 'sadmin', :password_confirmation => 'sadmin')
user=User.new(name: 'sadmin', role: 'sadmin', password: 'sadmin', password_confirmation: 'sadmin', email: 'sadmin@gmail.com')
# users =User.create!(:name 'sadmin', :password 'sadmin', :password_confirmation 'sadmin')
user.save!

# users =User.create!(:name 'sadmin', :password 'password', :password_confirmation 'password', :email 'sadmin@gmail.com', :role 'sadmin')

# users.save