require 'spec_helper'
require_relative '../../../app/models/spree/gateway/maxipago'

describe Spree::Gateway::Maxipago do
  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn)
    described_class.new
  end

  it 'has Spree::PaymentMethod::Maxipago as superclass' do
    expect(described_class.ancestors).to include(Spree::PaymentMethod::Maxipago)
  end
end
