FactoryGirl.define do
  factory :lifter do
    sequence(:email) {|n| "spartaan_nr_#{n}@sparta.gr"}
    password              'IKHOEFNIETTETANKENSCHAT'
    password_confirmation 'IKHOEFNIETTETANKENSCHAT'
  end
end
