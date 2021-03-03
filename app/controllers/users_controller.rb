class UsersController < ApplicationController
    before_action :authenticate, only: [:show, :rosters, :update]

    def index
        #All users, do I need it?
    end

    def login
        # user = User.first
        # render json: user
         # lookup a user with their username and password
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            # if they gave the right info, return that user object
            token = JWT.encode({ user_id: user.id }, 'mysecret', 'HS256')
            render json: { user: UserSerializer.new(user), token: token }
        else
            # otherwise, return some error message
            render json: { errors: ["Invalid username or password"] }, status: :unauthorized
        end
    end


    def show
        render json: @current_user
    end

    def rosters
        rosters = Roster.where(user_id: @current_user.id)
        render json: rosters
    end

    def signup
        # user = User.create(params.permit(:name, :username, :password))
        # render json: user
        # create a user in the backend
        user = User.create(user_params)
        if user.valid?
          # if the user is created successfully, send back the user
          token = JWT.encode({ user_id: user.id }, 'mysecret', 'HS256')
          watchlist = Watchlist.create(user_id: user.id)
          render json: { user: UserSerializer.new(user), token: token }
        else
          # otherwise, send back an error
          render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def update
        @current_user.update(name: params[:name], username: params[:username])
        render json: @current_user
    end

    def destroy
        # DELETE request
    end

    private

    def user_params
        params.permit(:name, :username, :password)
    end 

end
