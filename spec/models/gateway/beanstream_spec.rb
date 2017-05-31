require 'spec_helper'
require_relative '../../../app/models/spree/gateway/beanstream'

describe Spree::Gateway::Beanstream do
  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn)
    described_class.new
  end

  it 'has Spree::PaymentMethod::Beanstream as superclass' do
    expect(described_class.ancestors).to include(Spree::PaymentMethod::Beanstream)
  end
end
