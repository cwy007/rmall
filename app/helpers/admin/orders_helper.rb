module Admin::OrdersHelper
  def render_order_paid_state(order)
    if order.is_paid?
      content_tag(:span, "已付款", class: ["badge", "badge-success", "align-top"])
    else
      content_tag(:span, "未付款", class: ["badge", "badge-warning", "align-top"])
    end
  end
end
