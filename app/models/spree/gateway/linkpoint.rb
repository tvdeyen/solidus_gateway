module Spree
  class Gateway::Linkpoint < PaymentMethod::Linkpoint
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::Linkpoint as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::Linkpoint instead."
      super
    end
  end
end
