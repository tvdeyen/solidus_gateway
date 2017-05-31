module Spree
  class Gateway::Eway < PaymentMethod::Eway
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::Eway as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::Eway instead."
      super
    end
  end
end
