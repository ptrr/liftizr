require 'spec_helper'

describe TrainingDay do
  let(:lifter) { create(:lifter) }

  before do
    login_as(lifter)
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

  context ".create" do

    it "create one exercise with 3 sequences" do
      #visit "/training_days/new"

      #select('squat', from: "training_day[exercises_attributes][0][exercise_type]")
      #fill_in("training_day_sequences_weight", with: 40)
      #fill_in("training_day_sequences_repetitions", with: 5)

      #click_button "new sequence"
      #fill_in("training_day_sequences_weight", with: 50)
      #fill_in("training_day_sequences_repetitions", with: 3)

      #click_button "new sequence"
      #fill_in("training_day_sequences_weight", with: 60)
      #fill_in("training_day_sequences_repetitions", with: 1)

      #total_weight.should == 410
    end
  end
end
