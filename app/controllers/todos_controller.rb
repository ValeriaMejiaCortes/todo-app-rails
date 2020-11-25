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
    @todo = Todo.new(params.require(:todo).permit(:title, :text))

    if @todo.save
      redirect_to @todo
    else
      render 'new'
    end
  end
end
