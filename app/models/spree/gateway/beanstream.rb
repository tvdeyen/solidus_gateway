module Spree
  class Gateway::Beanstream < PaymentMethod::Beanstream
    def initialize(*args)
      Spree::Deprecation.warn \
        "Using Spree::Gateway::Beanstream as payment method is deprecated. " \
        "Please use Spree::PaymentMethod::Beanstream instead."
      super
    end
  end
end
