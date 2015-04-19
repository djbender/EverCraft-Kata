require_relative '../../lib/ever_craft'

RSpec.describe 'Character Can Attack' do
  context 'As a combatant' do
    subject(:character) { Character.new }
    let(:defender) { Character.new }
    context 'I want to be able to attack other combatants so that I can \
             survive to fight another day' do
      it 'wins an battle' do
        battle = Battle.new(attacker: character, defender: defender).fight
        expect(battle).to be_success
      end
    end
  end
end
