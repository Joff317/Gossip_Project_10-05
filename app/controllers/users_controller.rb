class UsersController < ApplicationController

   def index 
      @users = User.all
   end
   
   def show 
      @user = User.get_user_id(params[:id])
    end
end