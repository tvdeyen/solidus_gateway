require 'spec_helper'

describe Spree::PaymentMethod::Paymill do
  subject { described_class.create!(name: 'Paymill') }

  context '.gateway_class' do
    it 'is a Paymill gateway' do
      expect(subject.gateway_class).to eq ::ActiveMerchant::Billing::PaymillGateway
    end
  end
end
