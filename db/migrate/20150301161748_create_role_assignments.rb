class CreateRoleAssignments < ActiveRecord::Migration
  def change
    create_table :role_assignments do |t|
      t.integer :role_id
      t.integer :assignment_id
      t.timestamps
    end
  end
end
