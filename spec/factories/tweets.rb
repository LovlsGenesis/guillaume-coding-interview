FactoryBot.define do
  factory :tweet do
    user {create(:user)}
    body { "Lorem ipsum" }
  end
end
