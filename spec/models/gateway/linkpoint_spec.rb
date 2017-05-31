require 'spec_helper'

describe Spree::Gateway::Linkpoint do
  subject { described_class.create!(name: 'Linkpoint') }
  let(:gateway) { double('gateway') }
  let(:money) { double('money') }
  let(:credit_card) { double('credit_card') }
  let(:identification) { double('identification') }
  let(:options) { { subtotal: 3, discount: -1 } }

  before do
    allow(subject.gateway_class).to receive_messages(new: gateway)
  end

  context '.gateway_class' do
    it 'is a Linkpoint gateway' do
      expect(subject.gateway_class).to eq ::ActiveMerchant::Billing::LinkpointGateway
    end
  end

  context '#authorize' do
    it 'adds the discount to the subtotal' do
      expect(gateway).to receive(:authorize)
        .with(money, credit_card, subtotal: 2, discount: 0)
      subject.authorize(money, credit_card, options)
    end
  end

  context '#purchase' do
    it 'adds the discount to the subtotal' do
      expect(gateway).to receive(:purchase)
        .with(money, credit_card, subtotal: 2, discount: 0)
      subject.purchase(money, credit_card, options)
    end
  end

  context '#capture' do
    let(:authorization) { double('authorization') }

    it 'adds the discount to the subtotal' do
      expect(gateway).to receive(:capture)
        .with(money, authorization, subtotal: 2, discount: 0)
      subject.capture(money, authorization, options)
    end
  end

  context '#void' do
    it 'adds the discount to the subtotal' do
      expect(gateway).to receive(:void)
        .with(identification, subtotal: 2, discount: 0)
      subject.void(identification, options)
    end
  end

  context '#credit' do
    it 'adds the discount to the subtotal' do
      expect(gateway).to receive(:credit)
        .with(money, identification, subtotal: 2, discount: 0)
      subject.credit(money, identification, options)
    end
  end
end
