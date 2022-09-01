require './pokemon.rb'

RSpec.describe 'pokemon damage' do

  it 'checks whether effectiveness is correctly obtained' do
    effectiveness = get_effectiveness(:grass, :water)
    expect(effectiveness).to eq(2)
  end

  it 'checks whether grass pokemon attack vs water pokemon is correctly calculated' do
    damage = get_damage(:grass, 40, :water, 10)
    expect(damage).to eq(400)
  end

  it 'checks whether fire pokemon attack vs fire pokemon is correctly calculated' do
    damage = get_damage(:fire, 30, :fire, 15)
    expect(damage).to eq(50)
  end
end
