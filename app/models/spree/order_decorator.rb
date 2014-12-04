Spree::Order.class_eval do
    
  # override in your app if there are promotions you wish to exclude
  def send_to_impact_radius?
    self.all_adjustments.promotion.eligible.any?
  end

end