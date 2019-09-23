require 'Oystercard'

describe Oystercard do
  it { is_expected.to respond_to(:add_money).with(1).argument }

  describe 'initialization' do
    subject { Oystercard.new }

    it 'creates a card with default balance' do
      expect(subject.balance).to eq described_class::DEFAULT_BALANCE
    end
  end

  describe '#add_money' do
    it 'adds an amount to a customers Oystercard' do
      card = Oystercard.new
      expect(card.add_money(0)).to eq 0
    end
  end

end

=begin
  In order to use public transport
  As a customer
  I want money on my card

  objects
  card
  customer

  -messages
  add_money

  card --> add_money --> balance
=end
