class TasksController < ApplicationController
    
    def index
        category = Category.find(params[:category_id])
        @todo = category.todos.new
        @todos = Todo.where(category_id: category.id) 
        # binding.pry
    end
    
    def create
        # binding.pry
        category = Category.find(params[:category_id])
        todo = category.todos.new(todo_paramater)
       if todo.save
           flash[:success] = "task created!"
           redirect_to category_tasks_path
       else
           p "jasdkfjadf"
       end
    end
    
    def edit 
        @todo = Todo.find(params[:id])
        # binding.pry
        @category = Category.find(params[:category_id])
    end
    def update
        todo = Todo.find(params[:id])
        if todo.update(todo_paramater)
            flash[:success] = "task edited!"
            # binding.pry
            redirect_to category_tasks_path
        end
    end
    def destroy
        # binding.pry
        todo = Todo.find(params[:id])
        todo.destroy
        flash[:success] = "task deleted!"
        redirect_to category_tasks_path
    end
end


private

def todo_paramater
    params.require(:todo).permit(:task)
end

 