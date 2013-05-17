require 'spec_helper'

describe TrainingDay do
  let(:user) { user = create(:user); log_in(user); user }
  context ".creation" do
    
  end

  context ".viewing" do
    before do 
      @past_training_day = create(:training_day, date: Date.yesterday)
    end

    it "shows the training days in the past" do
      visit "/training_days"
      within "#past" do
        #page.should have_content @past_training_day.date
      end
    end
  end
end
