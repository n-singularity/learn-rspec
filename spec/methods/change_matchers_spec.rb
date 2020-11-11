require 'rspec'

# yang dicek adalah perubahannya atau selisihnya
RSpec.describe 'change matcher' do
  subject { [1, 2, 3, 4] }

  it 'check that a method change the object state' do
    expect { subject.push(4) }.to change { subject.length }.by(1)
  end

  it 'accept negatif argument' do
    expect { subject.pop }.to change { subject.length }.by(-1)
  end
end