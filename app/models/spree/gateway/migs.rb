module Spree
  class Gateway::Migs < PaymentMethod::Migs
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::Migs as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::Migs instead."
      super
    end
  end
end
