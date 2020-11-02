require 'rspec'

RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'Outer Before context'
  end

  before(:example) do
    puts 'Outer Before example'
  end

  it 'does basic math' do
    expect(1 + 1).to eq(2)
  end

  context 'with condition A' do
    before(:context) do
      puts 'INNER Before context'
    end

    before(:example) do
      puts 'INNER Before example'
    end

    it 'does more basic math' do
      expect(1 + 1).to eq(2)
    end

    it 'does subtraction is well' do
      expect(5 - 3).to eq(2)
    end
  end
end