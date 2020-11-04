require 'rspec'

RSpec.shared_context 'common' do
  before do
    @foods = []
  end

  def some_helper_method
    5
  end

  let(:some_variable) { [1, 2, 3] }
end

RSpec.describe 'first example group' do
  include_context 'common'

  it 'can use outside instance variable ' do
    expect(@foods.length).to eq(0)
    @foods << 'Sushi'
    expect(@foods.length).to eq(1)
  end

  it 'another example can use outside instance variable ' do
    expect(some_helper_method).to eq(5)
  end

  it 'can use share helper methods' do
    expect(@foods.length).to eq(0)
  end
end

RSpec.describe 'second example in different variable' do
  include_context 'common'
  it 'can use shared let variable ' do
    expect(some_variable).to eq([1, 2, 3])
  end
end