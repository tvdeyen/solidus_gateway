module Spree
  class Gateway::SagePay < PaymentMethod::SagePay
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::SagePay as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::SagePay instead."
      super
    end
  end
end
