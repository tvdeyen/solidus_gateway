require 'spec_helper'

describe Spree::Gateway::Moneris do
  subject { described_class.create!(name: 'Moneris') }

  context '.gateway_class' do
    it 'is a Moneris gateway' do
      expect(subject.gateway_class).to eq ::ActiveMerchant::Billing::MonerisGateway
    end
  end
end
