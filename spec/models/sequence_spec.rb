require 'spec_helper'

describe Sequence do
  it { should belong_to :exercise }

  it { should validate_numericality_of :weight }
  it { should validate_numericality_of :repetitions }
end
