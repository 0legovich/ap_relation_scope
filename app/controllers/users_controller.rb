class UsersController < ApplicationController
  def index
    @users = User.all
    @users.where!('id > 0')

    render json: @users
  end

  def authorized_index
    @users = authorized_scope(User.all)
    @users.where!('id > 0')

    render json: @users
  end
end
