require 'spec_helper'

describe Spree::Gateway::Beanstream do
  subject { described_class.create!(name: 'Beanstream') }

  context '.gateway_class' do
    it 'is a Beanstream gateway' do
      expect(subject.gateway_class).to eq ::ActiveMerchant::Billing::BeanstreamGateway
    end
  end

  context '.payment_profiles_supported?' do
    it 'return true' do
      expect(subject.payment_profiles_supported?).to be true
    end
  end
end
