class Exercise < ActiveRecord::Base
  attr_accessible :name
  belongs_to :lifter
end
