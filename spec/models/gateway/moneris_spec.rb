require 'spec_helper'
require_relative '../../../app/models/spree/gateway/moneris'

describe Spree::Gateway::Moneris do
  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn)
    described_class.new
  end

  it 'has Spree::PaymentMethod::Moneris as superclass' do
    expect(described_class.ancestors).to include(Spree::PaymentMethod::Moneris)
  end
end
