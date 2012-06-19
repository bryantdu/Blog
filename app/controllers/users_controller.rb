
class UsersController < ApplicationController
  def index
    @users = User.all.paginate(:page => params[:page], :per_page => 3)
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
    @user.destroy
    redirect_to users_path
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
