module Spree
  class Gateway::StripeGateway < PaymentMethod::StripeCreditCard
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::StripeGateway as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::StripeCreditCard instead."
      super
    end
  end
end
