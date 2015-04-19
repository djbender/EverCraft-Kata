require_relative '../../lib/ever_craft'

RSpec.describe 'Create a character' do
  it 'creates a character' do
    character = Character.new(name: 'Karl')
    expect(character.name).to eq 'Karl'
  end
end
