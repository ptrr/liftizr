require "spec_helper"

describe Exercise do
  it { should have_many :sequences }
  it { should validate_presence_of :exercise_type }
end
