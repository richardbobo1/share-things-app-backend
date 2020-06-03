class User < ApplicationRecord

    has_many :friends, through: :friend 

    has_many :lend_requests, :class_name => 'BorrowRequest', :foreign_key => "owner_id"
    has_many :borrow_requests, :class_name => 'BorrowRequest', :foreign_key => "borrower_id"
end
