require 'rails_helper'

# unit testing spec

describe Tag do
  it { should validate_presence_of :name }
  it { should belong_to :photo }
end
