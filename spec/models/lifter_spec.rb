require 'spec_helper'

describe Lifter do
  it {should have_many :exercises}
  it { should validate_presence_of :email }
  it { should validate_uniqueness_of :email }
end
