require 'spec_helper'
require_relative '../../../app/models/spree/gateway/worldpay'

describe Spree::Gateway::Worldpay do
  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn)
    described_class.new
  end

  it 'has Spree::PaymentMethod::Worldpay as superclass' do
    expect(described_class.ancestors).to include(Spree::PaymentMethod::Worldpay)
  end
end
