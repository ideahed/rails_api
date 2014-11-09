require 'spec_helper'

describe Note, 'Validations' do
  it { should validate_presence_of(:lat) }
  it { should validate_presence_of(:lon) }
  it { should validate_presence_of(:note_text) }
  it { should validate_presence_of(:expiration) }
  it { should validate_presence_of(:user_id) }
end
