RSpec.describe 'equality matcher' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  # eql akan mengecek value
  describe 'eq matcher' do
    it 'check for value' do
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

  # equal atau be(alias) akan mengecek lokasi memory yang sama,
  # meski value dan tipenya sama tapi jika lokasi memorynya berbeda maka akan dianggap berbeda
  describe 'equal and be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }
    it 'check for value, including same memory' do
      expect(c).not_to equal(d)
      expect(c).not_to equal([1, 2, 3])
      expect(c).to equal(e)
    end
  end
end