# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(
      name: "test",
      email: "test@test",
      password: "test",
      password_confirmation: "test"
)

5.times do
User.create(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      password: "1234",
      password_confirmation: "1234"
)
end

@dates = ['2015-06-23','2015-12-12','2015-06-24','2015-01-01']

5.times do
  Question.create(
      content: Faker::Lorem.sentence(2),
      duedate: @dates.sample
)
end

8.times do
  Answer.create(
      content: Faker::Lorem.sentence(5),
      question_id: [1..5].sample
  )
end

13.times do
  Result.create(
      answer_id: [1..8].sample,
      user_id: [1..6].sample
  )
end
