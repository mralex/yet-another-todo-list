class TodosController < ApplicationController
  before_filter :login_required, :except => [:index, :show]
  
  def index
    @todos = Todo.all
  end
  
  def show
    @todo = Todo.find(params[:id])
  end
  
  def new
    @todo = Todo.new
  end
  
  def create
    @todo = Todo.new(params[:todo])
    if @todo.save
      flash[:notice] = "Successfully created todo."
      respond_to do |format|
        format.html { redirect_to todos_url }
        format.js
      end
    else
      render :action => 'new'
    end
  end
  
  def edit
    @todo = Todo.find(params[:id])
  end
  
  def update
    @todo = Todo.find(params[:id])
    if @todo.update_attributes(params[:todo])
      flash[:notice] = "Successfully updated todo."
      respond_to do |format|
        format.html { redirect_to todos_url }
        format.js
      end
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    flash[:notice] = "Successfully destroyed todo."
    redirect_to todos_url
  end
end
