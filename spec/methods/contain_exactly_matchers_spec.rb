require 'rspec'

RSpec.describe 'contain exactly matcher' do
  subject { [1, 2, 3] }

  describe 'long from syntax' do
    it 'for check for the presence all the element' do
      expect(subject).to contain_exactly(1, 2, 3)
      expect(subject).to contain_exactly(2, 3, 1)
      expect(subject).to contain_exactly(3, 2, 1)
    end
  end
end