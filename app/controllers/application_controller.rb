class ApplicationController < ActionController::API
  include ActionPolicy::Controller
  authorize :user, through: :current_user

  def current_user
    User.last || User.create!
  end
end
