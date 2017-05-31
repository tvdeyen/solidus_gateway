module Spree
  class Gateway::PayflowPro < PaymentMethod::PayflowPro
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::PayflowPro as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::PayflowPro instead."
      super
    end
  end
end
