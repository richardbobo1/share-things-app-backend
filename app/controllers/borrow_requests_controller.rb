class BorrowRequestsController < ApplicationController
  def index
    borrowrequests = BorrowRequest.all 
    render json: borrowrequests
  end

  def show
    request = BorrowRequest.find(params[:id])
    render json: request.as_json(:include => [:borrower, :lender])
  end 

end
