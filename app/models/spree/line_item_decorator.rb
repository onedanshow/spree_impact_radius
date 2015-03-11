Spree::LineItem.class_eval do

  def discounted_amount_minus_discounted_amount_from_order
    self.discounted_amount - self.discounted_amount_from_order
  end

  private

    def discounted_amount_from_order
      self.order.adjustments.promotion.eligible.sum(:amount).abs * self.percentage_of_order
    end

    def percentage_of_order
      self.amount / self.order.item_total
    end

end