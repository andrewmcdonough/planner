Fabricator(:feedback) do
  coach
  tutorial
  rating 5
  request { Faker::Lorem.paragraph }
  suggestions { Faker::Lorem.paragraph }
end

Fabricator(:feedback_empty, class_name: :feedback)