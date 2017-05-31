module Spree
  class PaymentMethod::PayPal < PaymentMethod::CreditCard
    preference :login, :string
    preference :password, :string
    preference :signature, :string
    preference :currency_code, :string

    def gateway_class
      ActiveMerchant::Billing::PaypalGateway
    end
  end
end
