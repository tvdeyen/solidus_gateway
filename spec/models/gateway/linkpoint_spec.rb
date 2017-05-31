require 'spec_helper'
require_relative '../../../app/models/spree/gateway/linkpoint'

describe Spree::Gateway::Linkpoint do
  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn)
    described_class.new
  end

  it 'has Spree::PaymentMethod::Linkpoint as superclass' do
    expect(described_class.ancestors).to include(Spree::PaymentMethod::Linkpoint)
  end
end
