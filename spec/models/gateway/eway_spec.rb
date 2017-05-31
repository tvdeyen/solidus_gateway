require 'spec_helper'
require_relative '../../../app/models/spree/gateway/eway'

describe Spree::Gateway::Eway do
  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn)
    described_class.new
  end

  it 'has Spree::PaymentMethod::Eway as superclass' do
    expect(described_class.ancestors).to include(Spree::PaymentMethod::Eway)
  end
end
