require 'rspec'
require_relative '../rocketbook_to_obsidian'

RSpec.describe 'RocketbookToObsidian' do
  it 'processes Rocketbook scans and moves them to the Obsidian vault' do
    expect(RocketbookToObsidian.new.process).to eq('Processing Rocketbook scans and moving them to the Obsidian vault')
  end
end
