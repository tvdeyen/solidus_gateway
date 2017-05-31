module Spree
  class Gateway::PayJunction < PaymentMethod::PayJunction
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::PayJunction as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::PayJunction instead."
      super
    end
  end
end
