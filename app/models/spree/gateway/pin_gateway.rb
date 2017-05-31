module Spree
  class Gateway::PinGateway < PaymentMethod::PinCreditCard
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::PinGateway as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::PinCreditCard instead."
      super
    end
  end
end
