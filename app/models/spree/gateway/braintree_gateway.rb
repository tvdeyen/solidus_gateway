module Spree
  class Gateway::BraintreeGateway < PaymentMethod::BraintreeCreditCard
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::BraintreeGateway as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::BraintreeCreditCard instead."
      super
    end
  end
end
