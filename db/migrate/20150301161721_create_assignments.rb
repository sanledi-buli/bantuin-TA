class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.timestamps
      t.string :description
    end
  end
end
