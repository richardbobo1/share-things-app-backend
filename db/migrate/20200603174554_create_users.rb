class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :image_url
      t.string :firstName
      t.string :lastName
      t.string :city
      t.string :state
      t.string :zip_code

      t.timestamps
    end
  end
end
