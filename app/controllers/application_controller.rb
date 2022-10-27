class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :current_cart

  def after_sign_in_path_for(resource)
    homes_admin_top_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end
  
  def current_cart
    current_cart = Cart.find_by(id: session[:cart_id]) || Cart.create
    session[:cart_id] ||= current_cart.id
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end
end
