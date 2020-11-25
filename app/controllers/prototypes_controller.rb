class PrototypesController < ApplicationController
    before_action :authenticate_user!, only:[:index, :show, :new,]
    
    def index
        @prototype = Prototype.all
    end

    def new
        @prototype = Prototype.new
    end

    def create
       if  Prototype.create(prototype_params)
        redirect_to root_path
       else
        render new_prototype_path
       end
    end

    def show
        @prototype = Prototype.find(params[:id])
        @comment = Comment.new
        @comments = @prototype.comments.includes(:user)
    end

    def edit
        @prototype = Prototype.find(params[:id])
        if current_user != @prototype.user
            redirect_to root_path
        end
    end

    def update
        prototype = Prototype.find(params[:id])
        if prototype.update(prototype_params)
            redirect_to prototype_path(prototype)
        else
            render :edit
        end
    end

    def destroy
        prototype = Prototype.find(params[:id])
        prototype.destroy
        redirect_to root_path
    end

    private
    def prototype_params
        params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
    end    

end
