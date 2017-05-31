require 'spec_helper'
require_relative '../../../app/models/spree/gateway/braintree_gateway'

describe Spree::Gateway::BraintreeGateway do
  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn)
    described_class.new
  end

  it 'has Spree::PaymentMethod::BraintreeCreditCard as superclass' do
    expect(described_class.ancestors).to include(Spree::PaymentMethod::BraintreeCreditCard)
  end
end
