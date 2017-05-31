module Spree
  class PaymentMethod::SpreedlyCreditCard < PaymentMethod::CreditCard
    preference :login, :string
    preference :password, :string
    preference :gateway_token, :string
    def gateway_class
      ActiveMerchant::Billing::SpreedlyCoreGateway
    end
  end
end
