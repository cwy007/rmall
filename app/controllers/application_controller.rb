class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def admin_required
    if !current_user.is_admin?
      flash[:warning] = "You aren't admin!"
      redirect_to root_path
    end
  end

  helper_method :current_cart

  def current_cart
    @current_cart ||= find_cart
  end

  private
    # TODO: 当 user 登录后，将临时购物车内的内容，转存到该用户 current_user 的购物车內
    def find_cart
      cart = Cart.find_by(id: session[:cart_id])
      if cart.blank?
        cart = Cart.create
        session[:cart_id] = cart.id
      end
      return cart
    end
end
