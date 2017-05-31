require 'spec_helper'

describe Spree::BillingIntegration::Skrill::QuickCheckout do
  let(:quick_checkout) { create(:skrill_quick_checkout) }

  context '.gateway_class' do
    it 'is a Billing::Skrill class' do
      expect(quick_checkout.gateway_class).to eq ::ActiveMerchant::Billing::Skrill
    end
  end
end
