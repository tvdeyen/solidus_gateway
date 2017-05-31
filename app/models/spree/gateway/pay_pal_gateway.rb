module Spree
  class Gateway::PayPalGateway < PaymentMethod::PayPal
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::PayPalGateway as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::PayPal instead."
      super
    end
  end
end
