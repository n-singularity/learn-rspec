RSpec.describe 'a random double' do
  it 'only allow defined methods to be invoked' do
    # stuntman = double('Mr. Danger', fall_off_leader: 'Ouch', light_of_fire: true)
    # expect(stuntman.fall_off_leader).to eq('Ouch')
    # expect(stuntman.light_of_fire).to eq(true)

    # stuntman = double('Mr. Danger')
    # allow(stuntman).to receive(:fall_off_leader).and_return('Ouch')
    # expect(stuntman.fall_off_leader).to eq('Ouch')

    stuntman = double('Mr. Danger')
    allow(stuntman).to receive_messages(fall_off_leader: 'Ouch', light_of_fire: true)
    expect(stuntman.fall_off_leader).to eq('Ouch')
    expect(stuntman.light_of_fire).to eq(true)
  end
end