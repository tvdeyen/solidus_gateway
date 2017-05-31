require 'spec_helper'

describe Spree::Gateway::DataCash do
  subject { described_class.create!(name: 'DataCash') }

  context '.gateway_class' do
    it 'is a DataCash gateway' do
      expect(subject.gateway_class).to eq ::ActiveMerchant::Billing::DataCashGateway
    end
  end
end
