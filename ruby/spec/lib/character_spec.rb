require 'spec_helper'
require 'character'

describe Character do
  context "As a character I want to have a name so that I can be distinguished from other characters" do
    describe '#name' do
      it 'sets and gets name' do
        character = Character.new(name: 'Bob')
        expect { character.name = 'Sue' }.to change(character, :name).from('Bob').to('Sue')
      end
    end
  end

  context "As a character I want to have an alignment so that I have something to guide my actions" do
    describe '#alignment' do
      it 'sets and gets an alignment' do
        character = Character.new(alignment: :neutral)
        expect{ character.alignment = :chaotic }.to change(character, :alignment).from(:neutral).to(:chaotic)
      end
    end
  end

  context "As a combatant I want to have an armor class and hit points so that I can resist attacks from my enemies" do
    describe "#armor_class" do
      it 'sets and gets an armor_class' do
        character = Character.new(armor_class: 20)
        expect { character.armor_class = 15 }.to change(character, :armor_class).from(20).to(15)
      end

      it 'defaults to 10' do
        character = Character.new
        expect(character.armor_class).to eql 10
      end
    end

    describe "#hit_points" do
      it 'sets and gets hit_points' do
        character = Character.new(hit_points: 10)
        expect { character.hit_points = 100 }.to change(character, :hit_points).from(10).to(100)
      end

      it 'defaults to 5' do
        character = Character.new
        expect(character.hit_points).to eql 5
      end
    end
  end

end
