require 'spec_helper'

describe Spree::PaymentMethod::Banwire do
  subject { described_class.create!(name: 'Banwire') }

  context '.gateway_class' do
    it 'is a Banwire gateway' do
      expect(subject.gateway_class).to eq ::ActiveMerchant::Billing::BanwireGateway
    end
  end
end
