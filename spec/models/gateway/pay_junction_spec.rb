require 'spec_helper'

describe Spree::Gateway::PayJunction do
  subject { described_class.create!(name: 'PayJunction') }

  context '.gateway_class' do
    it 'is a PayJunction gateway' do
      expect(subject.gateway_class).to eq ::ActiveMerchant::Billing::PayJunctionGateway
    end
  end

  describe 'options' do
    it 'include :test => true in  when :test_mode is true' do
      subject.preferred_test_mode = true
      expect(subject.options[:test]).to be true
    end

    it 'does not include :test when test_mode is false' do
      subject.preferred_test_mode = false
      expect(subject.options[:test]).to be false
    end
  end
end
