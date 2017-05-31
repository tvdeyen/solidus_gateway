require 'spec_helper'
require_relative '../../../app/models/spree/gateway/pay_junction'

describe Spree::Gateway::PayJunction do
  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn)
    described_class.new
  end

  it 'has Spree::PaymentMethod::PayJunction as superclass' do
    expect(described_class.ancestors).to include(Spree::PaymentMethod::PayJunction)
  end
end
