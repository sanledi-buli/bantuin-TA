# Default Role
array_of_role = [
  {name: 'superadmin', description: 'Can manage all'},
  {name: 'manager', description: 'Manager role'},
  {name: 'staff inventory', description: 'Staff inventory'},
  {name: 'sales', description: 'Sales'}
]

Role.create(array_of_role)
role = Role.first

# Default assignments

array_of_assignments = [
  {description: "role"},
  {description: "user"},
  {description: "product"},
  {description: "supplier"},
  {description: "orders"}
]

Assignment.create(array_of_assignments)

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