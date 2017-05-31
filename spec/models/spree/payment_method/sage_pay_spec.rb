require 'spec_helper'

describe Spree::PaymentMethod::SagePay do
  subject { described_class.create!(name: 'SagePay') }

  context '.gateway_class' do
    it 'is a SagePay gateway' do
      expect(subject.gateway_class).to eq ::ActiveMerchant::Billing::SagePayGateway
    end
  end
end
