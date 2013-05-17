require 'spec_helper'

describe Exercise do
  before do
    create(:exercise)
  end

  it "shows the exercises by its name" do
    visit "/exercises"
    within "#exercises" do
      page.should have_content { Exercise.first.name }
    end
  end
end
