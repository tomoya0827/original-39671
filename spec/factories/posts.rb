FactoryBot.define do
  factory :post do
    explanatory_text{Faker::Lorem.sentence}
    target_age_id{Faker::Number.between(from: 2, to: 11)}
    association :user

    after(:build) do |post|
      file_path = Rails.root.join('app', 'assets', 'images', 'test_image.png')
      post.image.attach(io: File.open(file_path), filename: 'test_image.png')
    end
  end
end
