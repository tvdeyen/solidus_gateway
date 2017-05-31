require 'spec_helper'
require_relative '../../../app/models/spree/gateway/data_cash'

describe Spree::Gateway::DataCash do
  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn)
    described_class.new
  end

  it 'has Spree::PaymentMethod::DataCash as superclass' do
    expect(described_class.ancestors).to include(Spree::PaymentMethod::DataCash)
  end
end
