require 'spec_helper'
require_relative '../../../app/models/spree/gateway/stripe_gateway'

describe Spree::Gateway::StripeGateway do
  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn)
    described_class.new
  end

  it 'has Spree::PaymentMethod::StripeCreditCard as superclass' do
    expect(described_class.ancestors).to include(Spree::PaymentMethod::StripeCreditCard)
  end
end
