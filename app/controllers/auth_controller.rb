class AuthController < ApplicationController
    # the first thing always is isExist
    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            # puts user.authenticate(params[:password])
            render json: user
        end
    end
end