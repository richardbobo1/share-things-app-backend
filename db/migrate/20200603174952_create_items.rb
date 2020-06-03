class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :owner_id
      t.string :name
      t.string :description
      t.string :type
      t.string :status
      t.boolean :private

      t.timestamps
    end
  end
end
