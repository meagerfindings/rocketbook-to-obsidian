class RocketbookToObsidian
  ROCKETBOOK_INBOX_PATH = '/path/to/rocketbook/inbox'
  OBSIDIAN_VAULT_PATH = '/path/to/obsidian/vault'
  MEETINGS_FOLDER = 'meetings'

  def initialize
    validate_constants
  end

  def process
    'Processing Rocketbook scans and moving them to the Obsidian vault'
  end

  private

  def validate_constants
    raise StandardError, 'ROCKETBOOK_INBOX_PATH cannot be blank' if ROCKETBOOK_INBOX_PATH.to_s.strip.empty?
    raise StandardError, 'OBSIDIAN_VAULT_PATH cannot be blank' if OBSIDIAN_VAULT_PATH.to_s.strip.empty?
    raise StandardError, 'MEETINGS_FOLDER cannot be blank' if MEETINGS_FOLDER.to_s.strip.empty?
  end
end
