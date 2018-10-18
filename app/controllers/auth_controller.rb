class AuthController < ApplicationController
    # the first thing always is isExist
    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            # puts user.authenticate(params[:password])

            payload = { user_id: user.id }
            token = JWT.encode(payload, 'secret')

            # render json: user
            render json: {user: user, jwt: token}
        end
    end
end