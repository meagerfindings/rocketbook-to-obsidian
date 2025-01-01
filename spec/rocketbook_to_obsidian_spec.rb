require 'rspec'
require_relative '../rocketbook_to_obsidian'

RSpec.describe 'RocketbookToObsidian' do
  it 'processes Rocketbook scans and moves them to the Obsidian vault' do
    expect(RocketbookToObsidian.new.process).to eq('Processing Rocketbook scans and moving them to the Obsidian vault')
  end

  context 'constants' do
    it 'raises an error if ROCKETBOOK_INBOX_PATH is blank' do
      stub_const('RocketbookToObsidian::ROCKETBOOK_INBOX_PATH', '')
      expect { RocketbookToObsidian.new }.to raise_error(StandardError, 'ROCKETBOOK_INBOX_PATH cannot be blank')
    end

    it 'raises an error if OBSIDIAN_VAULT_PATH is blank' do
      stub_const('RocketbookToObsidian::OBSIDIAN_VAULT_PATH', '')
      expect { RocketbookToObsidian.new }.to raise_error(StandardError, 'OBSIDIAN_VAULT_PATH cannot be blank')
    end

    it 'raises an error if MEETINGS_FOLDER is blank' do
      stub_const('RocketbookToObsidian::MEETINGS_FOLDER', '')
      expect { RocketbookToObsidian.new }.to raise_error(StandardError, 'MEETINGS_FOLDER cannot be blank')
    end
  end
end
