class UsersController < ApplicationController
    def show
        user=User.find(params[:id])
        render json: user, include: :items
        
    end
    def index
        user=User.all
        render json: user ,status: :ok
    end
end
