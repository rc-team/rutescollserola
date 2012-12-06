FactoryGirl.define do
  factory :user do
    name     "Micahel Hartl"
    email    "michael@example.com"
    password "foobar"
    password_confirmation "foobar"
  end

  factory :route do
    name      "Collserola"
    subtitle  "Passeig per alla"
    description "Anem a la muntanya, anem a la muntanya"
  end
end

