class UsersController < ApplicationController
    before_action :authenticate, only: [:show]
    # review 
# POST /login
    def login
    #TODO : check the username and password
    
    # find the user based on their username
    user = User.find_by(username: params[:username])
    # if they are who they say that are,
    if user && user.authenticate(params[:password])
      render json: user
    else
      render json: { errors: ["Invalid username or password"] }, status: :unauthorized
    end
    # give them a token (wristband) and send the user and their token as the response
    # otherwise, send an error message

    #fake auth (stub)
    # user = User.first 
    

  end

# /signup
  def signup
    # get the user info from the form (params)
    user_params = params.permit(:username, :password, :fav_make, :fav_model)
    # create a new user in teh database (User.create)
    user = User.create(user_params)
    if user.valid?
      #send back a response with new user
      render json: user, status: :created
    else
      #error messages
      render json: { errors: ["username or password incorrect"] }, status: :unprocessable_entity
    end 
  end 

# GET /me
  def show
    #TODO: check the user's token from the request
    #if the token is valid, use it to find a user from the database
    # otherwise, send an error message
    # happening now in application controller

    #stub
    # @user = User.first
    # byebug
    render json: @current_user

  end

  # #PATCH /me
  # #authenticate
  # def update
  #   #TODO: check the user's token from the request
  #   # if the token is valid, use it to find a user from the database
  #   # otherwise, send an error message
  # happening now in application controller

  #   
  #   current_user.update(bio: params[:bio], image: params[image])
  #   render json: @current_user
  # end

  # def create
  #   @user = User.first
  #   @user.photos

  # end

  def index

    users = User.all 
    render json: users

  end

end
