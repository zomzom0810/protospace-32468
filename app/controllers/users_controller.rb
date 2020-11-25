class UsersController < ApplicationController
before_action :configure_permitted_parameters
    def show
        @user = User.find_by_id(params[:id])
        @prototypes = Prototype.includes(:user)
        @name = current_user.name
        @prifile = current_user.profile
        @occupation = current_user.occupation
        @position =current_user.position
        
    end
end
