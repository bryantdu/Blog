
class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
  end

  def create 
    @user = User.new(params[:user])
    
    respond_to do |format|
      if @user.save
        format.html {redirect_to users_path, :notice => 'User successfully saved' }
        format.json {render :json => @user, :status => :created, :location => @user }
       else
        format.html {render :action => "new"}
        format.json {render :json => @user.errors, :status => :unprocessable_entity}
       end
    end
  end
end
