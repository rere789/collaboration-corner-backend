class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :update, :destroy]

def profile
     render json: { user: current_user }, status: :accepted
end

def show
    user = current_user
    render json: user, :only => [:username, :img, :name, :school, :skillset, :name]
end
 
def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
end

# def edit
#     @user= User.find_by(id: params[:id])
# end

def current_user_edit
    if user = current_user
    user.update(user_params)
    render json: user
    else
    render json: {error: edit}
end
end

def update
    user = current_user
     if user.update(user_params)
        render json: user
    # head :no_content
    else  
    render json: { error: 'edit'}
    end
  end

def destroy
    user = current_user
    user.destroy
    head :no_content
  end

     
private
def user_params
    params.require(:user).permit(:username, :password, :skillset, :img, :school, :name)
    end
    
end
