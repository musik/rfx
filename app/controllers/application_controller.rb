class ApplicationController < ActionController::Base
  include Pundit
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  rescue_from Pundit::NotAuthorizedError do |exception|
    if user_signed_in?
      redirect_to root_path, :alert => exception.message
    else
      session["user_return_to"] = request.url
      redirect_to new_user_session_url , :alert => I18n.t("unauthorized.sign_in")
    end
  end
  before_filter :set_breadcrumbs
  private
  def set_breadcrumbs
    breadcrumbs.add :home,root_url,rel: "nofollow"
  end
end
