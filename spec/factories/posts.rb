FactoryBot.define do
    factory :post do
      association :user
      date Date.today
      rationale "A Rationale"
      user
    end

    factory :second_post, class: "Post" do
        association :user
        date Date.yesterday
        rationale "More Rationale"
        user
    end
  end