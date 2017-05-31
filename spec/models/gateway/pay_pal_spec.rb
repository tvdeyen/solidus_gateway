require 'spec_helper'
require_relative '../../../app/models/spree/gateway/pay_pal_gateway'

describe Spree::Gateway::PayPalGateway do
  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn)
    described_class.new
  end

  it 'has Spree::PaymentMethod::PayPal as superclass' do
    expect(described_class.ancestors).to include(Spree::PaymentMethod::PayPal)
  end
end
