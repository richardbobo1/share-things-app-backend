class CreateFriendRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :friend_requests do |t|
      t.integer :urequestor_id
      t.integer :requestee_id
      t.string :status
      t.boolean :approved

      t.timestamps
    end
  end
end
