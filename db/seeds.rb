r1 = Role.create(:name => 'user')
r2 = Role.create(:name => 'admin')
us1 = User.create(:email => 'user@gmail.com' , :password => '12345678', :role_id => r1.id)   
us2 = User.create(:email => 'admin@gmail.com' , :password => '12345678', :role_id => r2.id)  