module Spree
  class Gateway::DataCash < PaymentMethod::DataCash
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::DataCash as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::DataCash instead."
      super
    end
  end
end
