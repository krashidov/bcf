class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end
    
    def new
        @user = User.new
    end

    def create
        @user = User.new (params[:user])
        if @user.save
            flash[:success] = "Thanks " + @user.name + ", we will email you with updates."
            redirect_to share_path
        else 
            render 'new'
        end
    end

    def share
    end
end
