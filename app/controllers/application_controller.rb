class ApplicationController < ActionController::Base
  def current_user
    @current_user ||= User.where(staff: true).first
  end
end
