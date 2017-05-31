module Spree
  class Gateway::AuthorizeNetCim < PaymentMethod::AuthorizeNetCim
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::AuthorizeNetCim as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::AuthorizeNetCim instead."
      super
    end
  end
end
