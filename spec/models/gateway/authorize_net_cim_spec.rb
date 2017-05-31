require 'spec_helper'
require_relative '../../../app/models/spree/gateway/authorize_net_cim'

describe Spree::Gateway::AuthorizeNetCim do
  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn)
    described_class.new
  end

  it 'has Spree::PaymentMethod::AuthorizeNetCim as superclass' do
    expect(described_class.ancestors).to include(Spree::PaymentMethod::AuthorizeNetCim)
  end
end
