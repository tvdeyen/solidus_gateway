require 'spec_helper'

describe Spree::PaymentMethod::CardSave do
  subject { described_class.create!(name: 'CardSave') }

  context '.gateway_class' do
    it 'is a CardSave gateway' do
      expect(subject.gateway_class).to eq ::ActiveMerchant::Billing::CardSaveGateway
    end
  end
end
