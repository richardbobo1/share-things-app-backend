class BorrowRequest < ApplicationRecord

    belongs_to :borrower, :class_name => "User", :foreign_key => "borrower_id"
    belongs_to :lender, :class_name => "User", :foreign_key => "owner_id"
    has_one :item 
    

end
