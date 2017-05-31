require 'spec_helper'
require_relative '../../../app/models/spree/gateway/paymill'

describe Spree::Gateway::Paymill do
  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn)
    described_class.new
  end

  it 'has Spree::PaymentMethod::Paymill as superclass' do
    expect(described_class.ancestors).to include(Spree::PaymentMethod::Paymill)
  end
end
