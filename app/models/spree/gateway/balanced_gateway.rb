module Spree
  class Gateway::BalancedGateway < PaymentMethod::BalancedCreditCard
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::BalancedGateway as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::BalancedCreditCard instead."
      super
    end
  end
end
