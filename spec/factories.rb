FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "Person @{n}" }
    sequence(:email) { |n| "person_#{n}@example.com" }
    password "foobar"
    password_confirmation "foobar"
  end

  factory :route do
    name      "Collserola"
    subtitle  "Passeig per alla"
    description "Anem a la muntanya, anem a la muntanya"
  end
end

