RSpec.describe 'equality matcher' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  # eql akan mengecek value
  describe 'eq matcher' do
    it 'check for value, including same type' do
      expect(a).to eq(3)
      expect(b).to eq(3.0)
      expect(a).to eq(b)
    end
  end

  # eql akan mengecek value dan type
  describe 'eql matcher' do
    it 'check for value, including same type' do
      expect(a).not_to eql(3)
      expect(b).not_to eql(3.0)
      expect(a).not_to eql(b)
    end
  end
end