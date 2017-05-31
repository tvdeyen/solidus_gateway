require 'spec_helper'
require_relative '../../../app/models/spree/gateway/secure_pay_au'

describe Spree::Gateway::SecurePayAU do
  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn)
    described_class.new
  end

  it 'has Spree::PaymentMethod::SecurePayAU as superclass' do
    expect(described_class.ancestors).to include(Spree::PaymentMethod::SecurePayAU)
  end
end
