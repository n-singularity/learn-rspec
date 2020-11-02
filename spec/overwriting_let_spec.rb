class ProgrammingLanguage
  attr_reader :name

  def initialize (name = 'Ruby')
    @name = name
  end

  RSpec.describe ProgrammingLanguage do
    let(:language) { ProgrammingLanguage.new('Python') }

    it 'should store the name of language' do
      expect(language.name).to eq('Python')
    end

    context 'with no argument' do
      let(:language) { ProgrammingLanguage.new }

      it 'should default to Ruby as the name' do
        expect(language.name).to eq('Ruby')
      end
    end
  end
end