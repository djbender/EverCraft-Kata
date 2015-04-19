require_relative '../../lib/battle'
require_relative '../../lib/character'

describe Battle do
  describe '#fight' do
    context 'given an attacker and a defender' do
      let(:attacker) { instance_double Character }
      let(:defender) { instance_double Character }
      it 'is successful when attack is above armor class of defender' do
        expect(attacker).to receive(:attack).with(defender) { :success }
        # expect(Dice).to receive(:roll) { 20 }
        Battle.new(attacker: attacker, defender: defender).fight
      end
    end
  end
end
