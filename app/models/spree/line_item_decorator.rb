Spree::LineItem.class_eval do

  def discounted_amount_minus_discounted_amount_from_order
    discounted_amount - discounted_amount_from_order
  end

  private

    def discounted_amount_from_order
      # DD: do not use order.promo_total; includes promo adjustments on line items, shipping, and order 
      #   adjustments; just want the latter
      self.order.adjustments.promotion.eligible.sum(:amount).abs * percentage_of_order
    end

    def percentage_of_order
      result = amount / order.item_total
      result.nan? ? 0.0 : result
    end

end