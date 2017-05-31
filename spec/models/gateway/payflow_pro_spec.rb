require 'spec_helper'
require_relative '../../../app/models/spree/gateway/payflow_pro'

describe Spree::Gateway::PayflowPro do
  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn)
    described_class.new
  end

  it 'has Spree::PaymentMethod::PayflowPro as superclass' do
    expect(described_class.ancestors).to include(Spree::PaymentMethod::PayflowPro)
  end
end
