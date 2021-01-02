class CategoriesController < ApplicationController
    def index
        @category = Category.new
        @categories = Category.where.not(name: nil)
    end
    
    def create
        category = Category.new(category_paramater)
       if category.save
           redirect_to root_path
       else
           p "jasdkfjadf"
       end
    end
    
    def destroy
        category = Category.find(params[:id])
        category.destroy
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
    params.require(:category).permit(:name)
end