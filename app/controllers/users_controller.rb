class UsersController < ApplicationController


    def index
        users = User.all
        render json: users
    end




    # private

    # def users_params
    #     params.require(:user).permit(:username, :email, :image_url, :password)
    # end


end
