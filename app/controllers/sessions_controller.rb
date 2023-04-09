class SessionsController < ApplicationController

    def create
        user = User.find_by_id(session[:current_user_id])

        render json: {
            user: user
        }
    end

    def index
        user = User.find_by_id(session[:current_user_id])

        render json: {
            user: user
        }, include: [:team]
    end
end
