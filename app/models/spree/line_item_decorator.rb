Spree::LineItem.class_eval do

  def discounted_amount_minus_discounted_amount_from_order
    discounted_amount - discounted_amount_from_order
  end

  private

    def discounted_amount_from_order
      # DD: order.promo_total includes promo adjustments on line items, shipping, and order adjustments
      (order.promo_total.abs - discounted_amount) * percentage_of_order
    end

    def percentage_of_order
      amount / order.item_total
    end

end