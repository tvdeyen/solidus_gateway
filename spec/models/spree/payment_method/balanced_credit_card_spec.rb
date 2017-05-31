require 'spec_helper'

describe Spree::PaymentMethod::BalancedCreditCard do
  subject { described_class.create!(name: 'Balanced') }

  context '.gateway_class' do
    it 'is a Balanced gateway' do
      expect(subject.gateway_class).to eq ::ActiveMerchant::Billing::BalancedGateway
    end
  end

  context '.payment_profiles_supported?' do
    it 'return true' do
      expect(subject.payment_profiles_supported?).to be true
    end
  end
end
