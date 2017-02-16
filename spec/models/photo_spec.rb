require 'rails_helper'

# unit testing spec

describe Photo do
  it { should validate_presence_of :title }
  it { should validate_presence_of :details }
  it { should belong_to :user }
end
