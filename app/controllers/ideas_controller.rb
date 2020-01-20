class IdeasController < ApplicationController
    before_action :find_idea, only: [:edit, :show, :update, :destroy]
    before_action :idea_params, only: [:create, :update]

    def index 
        @ideas = Idea.all
      end

    def new
@idea = Idea.new
        
    end

    def create
        @idea = Idea.new idea_params

        if @idea.save
            flash[:success] = "Ideas created successfully"
            redirect_to ideas_path(@idea)
        else
            render :new
        end
        
    end
    
    def edit
        
    end

    def update
        if @idea.update idea_params
            flash[:notic] = "Idea updated successfully"
            redirect_to @idea
        else
            render :edit
        end
    end

    def destroy
        @idea.destroy
        flash[:notice] = "Idea deleted successfully"
        redirect_to ideas_path
    end

    private

    def find_idea
        @idea = Idea.find params[:id]
    end

    def idea_params
        idea_params = params.require(:idea).permit(:title, :description)
    end
end
