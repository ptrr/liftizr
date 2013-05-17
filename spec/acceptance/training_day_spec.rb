require 'spec_helper'

describe TrainingDay do
  let(:lifter) { create(:lifter) }

  before do
    login_as(lifter)
  end

  context ".creation" do

  end

  context ".viewing" do
    before do
      @past_training_day = create(:training_day, date: Date.yesterday, lifter: lifter)
    end

    it "shows the training days in the past" do
      visit "/training_days"
      within "#past" do
        page.should have_content @past_training_day.date
      end
    end
  end
end
