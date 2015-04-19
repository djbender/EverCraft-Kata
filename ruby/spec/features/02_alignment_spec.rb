require_relative '../../lib/ever_craft'

RSpec.describe 'Character Alignments' do
  context 'given a character' do
    subject(:character) { Character.new }
    it 'can have an alignment' do
      character.alignment = :good
      expect(character.alignment).to eq :good
    end
  end
end
