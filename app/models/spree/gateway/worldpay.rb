module Spree
  class Gateway::Worldpay < PaymentMethod::Worldpay
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::Worldpay as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::Worldpay instead."
      super
    end
  end
end
