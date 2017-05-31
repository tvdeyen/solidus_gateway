require 'spec_helper'

describe Spree::PaymentMethod::AuthorizeNetCim do
  context '.gateway_class' do
    it 'is a AuthorizeNetCim gateway' do
      expect(subject.gateway_class).to eq ::Spree::PaymentMethod::AuthorizeNetCim
    end
  end

  context '.payment_profiles_supported?' do
    it 'return true' do
      expect(subject.payment_profiles_supported?).to be true
    end
  end

  describe 'options' do
    it 'include :test => true when :test_mode is true' do
      subject.preferred_test_mode = true
      expect(subject.options[:test]).to be true
    end

    it 'does not include :test when :test_mode is false' do
      subject.preferred_test_mode = false
      expect(subject.options[:test]).to be_nil
    end
  end
end
