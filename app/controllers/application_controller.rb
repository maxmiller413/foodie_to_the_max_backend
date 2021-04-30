class ApplicationController < ActionController::API

    def authenticate
        #TODO: check the user's token from the request
        # if the token is valid, use it to find a user frmo the database
        # otherwise, send an error message

        @current_user = User.find_by(id: params[:id])

    end 
end
