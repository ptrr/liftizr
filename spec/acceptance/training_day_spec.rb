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
      @past_training_day     = create(:training_day, date: Date.yesterday, lifter: lifter)
      @upcoming_training_day = create(:training_day, date: Date.tomorrow, lifter: lifter)
    end

    it "shows the training days in the past" do
      visit "/training_days"
      within "#past" do
        page.should have_content @past_training_day.date
      end
    end

    it "shows the upcoming training day" do
      visit "/training_days"

      within "#upcoming" do
        page.should have_content @upcoming_training_day.date
      end

    end
  end
end
