class Role < ActiveRecord::Base
  
  #validations

  validates :name, presence: true
  
  #associations
  has_many :users
  has_many :assignments, through: :role_assignments
  has_many :role_assignments
end
