module Spree
  class Gateway::Moneris < PaymentMethod::Moneris
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::Moneris as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::Moneris instead."
      super
    end
  end
end
