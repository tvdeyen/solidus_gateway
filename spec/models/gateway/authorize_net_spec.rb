require 'spec_helper'
require_relative '../../../app/models/spree/gateway/authorize_net'

describe Spree::Gateway::AuthorizeNet do
  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn)
    described_class.new
  end

  it 'has Spree::PaymentMethod::AuthorizeNet as superclass' do
    expect(described_class.ancestors).to include(Spree::PaymentMethod::AuthorizeNet)
  end
end
