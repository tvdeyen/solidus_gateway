module Spree
  class Gateway::Maxipago < PaymentMethod::Maxipago
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::Maxipago as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::Maxipago instead."
      super
    end
  end
end
