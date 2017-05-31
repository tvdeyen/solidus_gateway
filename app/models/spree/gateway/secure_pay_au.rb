module Spree
  class Gateway::SecurePayAU < PaymentMethod::SecurePayAU
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::SecurePayAU as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::SecurePayAU instead."
      super
    end
  end
end
