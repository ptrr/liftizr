require 'spec_helper'

describe TrainingDay do
  it { should belong_to :lifter }
  it { should have_many :exercises }
end
