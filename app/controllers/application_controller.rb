class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user_subscribed?
    user_signed_in? && current_user.subscribed?
  end
  helper_method :current_user_subscribed?

  def after_sign_up_path_for(resource)
    if params[:plan] == "free" or ""
      root_path # as defined in config/routes.rb
    elsif params[:plan] == "monthly"
      new_subscription_path
    end
  end

end
