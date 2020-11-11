require 'rspec'

RSpec.describe 'be matcher' do
  it 'can test for truthiness' do
    expect(true).to be_truthy
    expect('Hello').to be_truthy
    expect(5).to be_truthy
    expect(0).to be_truthy
    expect(-1).to be_truthy
    expect(3.14).to be_truthy
    expect([]).to be_truthy
    expect({}).to be_truthy
    expect(:symbol).to be_truthy
  end

  it 'can test for falsiness' do
    expect(false).to be_falsey
    expect(nil).to be_falsey
  end

  it 'can test for nil' do
    expect(nil).to be_nil

    my_hash = {a: 1}
    expect(my_hash[:B]).to be_nil
  end
end