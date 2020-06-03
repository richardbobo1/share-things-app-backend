class CreateBorrowRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :borrow_requests do |t|
      t.integer :owner_id
      t.integer :borrower_id
      t.integer :item_id
      t.datetime :start_date
      t.datetime :end_date
      t.string :status
      t.boolean :approved
      t.boolean :returned

      t.timestamps
    end
  end
end
