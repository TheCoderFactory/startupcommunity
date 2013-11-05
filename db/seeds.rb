puts 'CREATING ROLES'
Role.create([
  { :name => 'admin' }, 
  { :name => 'user' },
  { :name => 'VIP' }
])
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :email => 'user@example.com', :password => 'pleaseme', :password_confirmation => 'pleaseme'
puts 'New user created: '
user2 = User.create! :email => 'user2@example.com', :password => 'pleaseme', :password_confirmation => 'pleaseme'
puts 'New user created: '
user.add_role :admin
user2.add_role :user