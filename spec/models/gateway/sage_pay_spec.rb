require 'spec_helper'
require_relative '../../../app/models/spree/gateway/sage_pay'

describe Spree::Gateway::SagePay do
  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn)
    described_class.new
  end

  it 'has Spree::PaymentMethod::SagePay as superclass' do
    expect(described_class.ancestors).to include(Spree::PaymentMethod::SagePay)
  end
end
