class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  # render a js file
  def new
    @todo = Todo.new

    respond_to do |format|
      format.js
    end
  end

  def create
    @user = User.first
    @todo = Todo.new(params.require(:todo).permit(:title, :text), user_id: @user.id)

    binding.pry
    if @todo.save
      redirect_to @todo
    else
      puts 'Im here'
    end
  end
end
