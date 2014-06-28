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

User.create(
      name: "test2",
      email: "test2@test",
      password: "test",
      password_confirmation: "test"
)

4.times do
User.create(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      password: "1234",
      password_confirmation: "1234"
)
end

@dates = ['2015-06-23','2015-12-12','2015-06-24','2015-01-01']


Question.create(
  content: "Test for Yes/No results",
  duedate: DateTime.now + 1.day,
  user_id: 2
)

Answer.create(
  content: "Yes",
  question_id: 1
)

Answer.create(
  content: "No",
  question_id: 1
)

5.times do
  Result.create(
  answer_id: 1,
  user_id: [1, 2, 3, 4, 5, 6].sample
  )
end

15.times do
  Result.create(
  answer_id: 2,
  user_id: [1, 2, 3, 4, 5, 6].sample
  )
end



2.times do
  Question.create(
      content: Faker::Lorem.sentence(2),
      duedate: @dates.sample,
      user_id: 1
)
end

3.times do
  Question.create(
      content: Faker::Lorem.sentence(2),
      duedate: @dates.sample,
      user_id: 2
)
end

8.times do
  Answer.create(
      content: Faker::Lorem.sentence(5)
      question_id:

  )
end

3.times do
  Result.create(
      answer_id: [3,4,5,6,7,8].sample,
      user_id: [1,2].sample
  )
end

8.times do
  Result.create(
      answer_id: [3,4,5,6,7,8].sample,
      user_id: [3,4,5,6].sample
  )
end
