FactoryBot.define do
  factory :audit_log do
    user { nil }
    status { 1 }
    start_date { "MyString" }
    end_date { "2022-03-10" }
  end
end
