class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :user_id
      t.integer :qty
      t.timestamps
    end
  end
end
