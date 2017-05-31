module Spree
  class PaymentMethod::Maxipago < PaymentMethod::CreditCard
    preference :login, :string # ID
    preference :password, :string # KEY

    def gateway_class
      ActiveMerchant::Billing::MaxipagoGateway
    end

    def auto_capture?
      true
    end
  end
end
