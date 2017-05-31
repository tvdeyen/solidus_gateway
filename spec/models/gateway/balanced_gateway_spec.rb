require 'spec_helper'
require_relative '../../../app/models/spree/gateway/balanced_gateway'

describe Spree::Gateway::BalancedGateway do
  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn)
    described_class.new
  end

  it 'has Spree::PaymentMethod::BalancedCreditCard as superclass' do
    expect(described_class.ancestors).to include(Spree::PaymentMethod::BalancedCreditCard)
  end
end
