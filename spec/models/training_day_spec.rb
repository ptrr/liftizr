require 'spec_helper'

describe TrainingDay do
  it { should belong_to :lifter }
  it { should have_many :exercises }
  it { should validate_presence_of(:lifter) }
end
