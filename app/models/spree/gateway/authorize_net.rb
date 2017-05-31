module Spree
  class Gateway::AuthorizeNet < PaymentMethod::AuthorizeNet
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::AuthorizeNet as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::AuthorizeNet instead."
      super
    end
  end
end
