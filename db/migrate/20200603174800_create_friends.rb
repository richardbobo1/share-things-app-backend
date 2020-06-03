class CreateFriends < ActiveRecord::Migration[6.0]
  def change
    create_table :friends do |t|
      t.integer :requestor_id
      t.integer :requestee_id
      t.string :status
      t.boolean :approved

      t.timestamps
    end
  end
end
