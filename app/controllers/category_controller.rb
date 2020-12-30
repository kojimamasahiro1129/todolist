class CategoryController < ApplicationController
    def index
        @category = Category.new
    end
end
