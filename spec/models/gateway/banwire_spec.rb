require 'spec_helper'
require_relative '../../../app/models/spree/gateway/banwire'

describe Spree::Gateway::Banwire do
  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn)
    described_class.new
  end

  it 'has Spree::PaymentMethod::Banwire as superclass' do
    expect(described_class.ancestors).to include(Spree::PaymentMethod::Banwire)
  end
end
