require 'spec_helper'
require_relative '../../../app/models/spree/gateway/pin_gateway'

describe Spree::Gateway::PinGateway do
  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn)
    described_class.new
  end

  it 'has Spree::PaymentMethod::PinCreditCard as superclass' do
    expect(described_class.ancestors).to include(Spree::PaymentMethod::PinCreditCard)
  end
end
