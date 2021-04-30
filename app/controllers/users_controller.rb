class UsersController < ApplicationController
    before_action :authenticate, only: [:show]
    
    def index
        @users = User.all 
        render json: @users
    end 

    def show
        @user = @current_user
        render json: @user
    end

end
