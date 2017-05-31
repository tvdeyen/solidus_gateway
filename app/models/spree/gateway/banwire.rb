module Spree
  class Gateway::Banwire < PaymentMethod::Banwire
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::Banwire as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::Banwire instead."
      super
    end
  end
end
