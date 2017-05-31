require 'spec_helper'
require_relative '../../../app/models/spree/gateway/usa_epay'

describe Spree::Gateway::UsaEpay do
  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn)
    described_class.new
  end

  it 'has Spree::PaymentMethod::UsaEpay as superclass' do
    expect(described_class.ancestors).to include(Spree::PaymentMethod::UsaEpay)
  end
end
