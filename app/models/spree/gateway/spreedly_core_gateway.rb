module Spree
  class Gateway::SpreedlyCoreGateway < PaymentMethod::SpreedlyCreditCard
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::SpreedlyCoreGateway as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::SpreedlyCreditCard instead."
      super
    end
  end
end
