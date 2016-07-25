require 'spec_helper'

RSpec.describe Race do
  subject(:race) {Race.new}
    
    describe '::new' do
    it 'instantiates two cars' do 
    expect(race.cars.length).to eq 2
  end
    it 'accelerates the cars to random speeds' do 
      expect(race.cars.first.speed).to_not eq 0
      expect(race.cars.last.speed).to_not eq 0
    end
  end
  
  describe '#winner' do
    it 'returns the winner' do 
    expect(race.winner.speed > race.loser.speed)
    end 
    it 'is not the loser' do 
    expect(race.winner.speed != race.loser.speed)
  end 
end
  describe '#loser' do
    it 'returns the loser' do 
    expect(race.loser != race.winner)
    end 
    it 'is not the winner' do 
    expect (race.loser != race.winner)
    end
  end
end

