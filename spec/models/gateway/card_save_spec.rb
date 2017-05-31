require 'spec_helper'
require_relative '../../../app/models/spree/gateway/card_save'

describe Spree::Gateway::CardSave do
  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn)
    described_class.new
  end

  it 'has Spree::PaymentMethod::CardSave as superclass' do
    expect(described_class.ancestors).to include(Spree::PaymentMethod::CardSave)
  end
end
