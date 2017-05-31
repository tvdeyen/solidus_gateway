require 'spec_helper'

describe Spree::Gateway::SecurePayAU do
  subject { described_class.create!(name: 'SecurePayAU') }

  context '.gateway_class' do
    it 'is a SecurePayAU gateway' do
      expect(subject.gateway_class).to eq ::ActiveMerchant::Billing::SecurePayAuGateway
    end
  end
end
