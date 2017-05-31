module Spree
  class Gateway::Paymill < PaymentMethod::Paymill
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::Paymill as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::Paymill instead."
      super
    end
  end
end
