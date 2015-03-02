class Assignment < ActiveRecord::Base
  validates :description, presence: true, uniqueness: { case_sensitive: false }

  has_many :roles, through: :role_assignments
  has_many :role_assignments
end
