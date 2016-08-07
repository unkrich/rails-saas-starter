class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user_subscribed?
    user_signed_in? && current_user.subscribed?
  end
  helper_method :current_user_subscribed?

end
