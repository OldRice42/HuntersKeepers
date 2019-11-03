FactoryBot.define do
  factory :improvement do
    description { "MyString" }
    type { "" }
    move_id { 1 }
    rating { 1 }
    stat_limit { 1 }
  end

  factory :rating_boost, class: Improvements::RatingBoost do
    description { "Get +1 Charm, max +3" }
    type { "Improvements::RatingBoost" }
    rating { 0 } # Charm
    stat_limit { 3 }
  end
end
