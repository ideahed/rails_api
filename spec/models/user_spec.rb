require 'spec_helper'

describe User, 'Validations' do
  it { should validate_uniqueness_of(:devicetoken) }
end