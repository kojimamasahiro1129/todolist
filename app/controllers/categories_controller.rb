class CategoriesController < ApplicationController
      before_action :logged_in_user, only: [:create, :destroy,:index,:edit,:update]

    def index
        # current_user
        # binding.pry
        @category = Category.new
        @categories = Category.where.not(name: nil).where(user_id: current_user[:id])
    end
    
  def create
    @category = current_user.categories.new(category_paramater)
    if @category.save
      flash[:success] = "category created!"
      redirect_to root_path
    else
      render 'static_pages/home'
    end
  end
    
    
    def destroy
        category = Category.find(params[:id])
        category.destroy
        flash[:success] = "category deleted"
        redirect_to root_path
    end
    
    def edit
        @category = Category.find(params[:id])
    end
    
    def update
        category = Category.find(params[:id])
        if category.update(category_paramater)
            redirect_to root_path
        end
    end
end




private

def category_paramater
    params.require(:category).permit(:name,:user_id)
end