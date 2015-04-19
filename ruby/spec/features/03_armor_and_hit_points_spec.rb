require_relative '../../lib/ever_craft'

RSpec.describe 'Character Armor and Hit Points' do
  context 'As a combatant' do
    subject(:character) { Character.new }
    context 'I want to have an armor class and hit points so that I can \
             resist attacks from my enemies' do
      it { expect(character.armor_class).to be 10 }
      it { expect(character.hit_points).to be 5 }
    end
  end
end
