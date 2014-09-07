# Create role superadmin.
role = Role.create(
  name: 'superadmin',
  description: 'Can handle all features'
)

# Create default user.
user = User.new(
  username: 'superadmin',
  first_name: 'hisui',
  last_name: 'pandin',
  email: 'superadmin@forecasting.com',
  password: '12345678',
  password_confirmation: '12345678'
)
user.role_id = role.id
user.save