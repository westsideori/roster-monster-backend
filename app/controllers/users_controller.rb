class UsersController < ApplicationController

    def index
        #All users, do I need it?
    end

    def login
        user = User.first
        render json: user
    end

    def me
        user = User.first
        render json: user
    end

    def show
        #Do I need to show a single user?
    end

    def create
        #Fake Auth first
    end

    def update
        #Maybe
    end

    def destroy
        # DELETE request
    end


end
