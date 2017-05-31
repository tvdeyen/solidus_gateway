module Spree
  class Gateway::CardSave < PaymentMethod::CardSave
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::CardSave as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::CardSave instead."
      super
    end
  end
end
