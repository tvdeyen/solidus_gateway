module Spree
  class Gateway::UsaEpay < PaymentMethod::UsaEpay
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::UsaEpay as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::UsaEpay instead."
      super
    end
  end
end
