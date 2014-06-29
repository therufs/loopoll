# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(
    name: "Mae",
    email: "test@test",
    password: "test",
    password_confirmation: "test"
)

User.create(
    name: "Sebastian",
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


#------------------

Question.create(
    content: "To Infinity or Beyond?",
    duedate: Date.today + 7.days,
    user_id: 1
)

Answer.create(
    content: "Infinity",
    question_id: 1
)

Answer.create(
    content: "Beyond",
    question_id: 1
)

# 2.times do |i|
#   Result.create(
#       answer_id: 1,
#       user_id: i + 1
#   )
# end

5.times do |i|
  Result.create(
      answer_id: 2,
      user_id: i + 2
  )
end


Question.create(
    content: "Wat's your favorite color?",
    duedate: Date.today + 5.days,
    user_id: 1
)

Answer.create(
    content: "Indigo",
    question_id: 2
)

Answer.create(
    content: "Chartreuse",
    question_id: 2
)

Answer.create(
    content: "Fuchsia",
    question_id: 2
)

Answer.create(
    content: "Rainbow",
    question_id: 2
)

1.times do |i|
  Result.create(
      answer_id: 3,
      user_id: i + 2
  )
end

1.times do |i|
  Result.create(
      answer_id: 4,
      user_id: i + 4
  )
end

1.times do |i|
  Result.create(
      answer_id: 5,
      user_id: i + 6
  )
end

# 1.times do |i|
#   Result.create(
#       answer_id: 6,
#       user_id: i + 6
#   )
# end
#
#
Question.create(
    content: "Yes, or No?",
    duedate: Date.today + 10.days,
    user_id: 2
)

Answer.create(
    content: "Yes",
    question_id: 3
)

Answer.create(
    content: "No",
    question_id: 3
)

4.times do |i|
  Result.create(
      answer_id: 7,
      user_id: i + 3
  )
end

1.times do |i|
  Result.create(
      answer_id: 8,
      user_id: 1
  )
end

Question.create(
    content: "Trapezoid or Rhombus?",
    duedate: Date.today + 31.days,
    user_id: 2
)

Answer.create(
    content: "Trapezoid",
    question_id: 4
)

Answer.create(
    content: "Rhombus",
    question_id: 4
)

1.times do |i|
  Result.create(
      answer_id: 9,
      user_id: 1
  )
end

2.times do |i|
  Result.create(
      answer_id: 10,
      user_id: i + 3
  )
end

Question.create(
    content: "Best game ever?",
    duedate: Date.today + 11.days,
    user_id: 3
)

Answer.create(
    content: "Tetris",
    question_id: 5
)

Answer.create(
    content: "Frogger",
    question_id: 5
)

Answer.create(
    content: "Pitfall",
    question_id: 5
)

Answer.create(
    content: "Q-Bert",
    question_id: 5
)

Answer.create(
    content: "Galaga",
    question_id: 5
)

2.times do |i|
  Result.create(
      answer_id: 11,
      user_id: i + 4
  )
end

1.times do |i|
  Result.create(
      answer_id: 12,
      user_id: i + 6
  )
end

2.times do |i|
  Result.create(
      answer_id: 13,
      user_id: i + 1
  )
end

# 1.times do |i|
#   Result.create(
#       answer_id: 14,
#       user_id: [1, 2, 3, 4, 5, 6].sample
#   )
# end
#
# 1.times do |i|
#   Result.create(
#       answer_id: 15,
#       user_id: [1, 2, 3, 4, 5, 6].sample
#   )
# end


Question.create(
    content: "Is the space between a and b:",
    duedate: Date.today + 9.days,
    user_id: 3
)

Answer.create(
    content: "Nothing",
    question_id: 6
)

Answer.create(
    content: "Something",
    question_id: 6
)

Answer.create(
    content: "Why do you ask?",
    question_id: 6
)

5.times do |i|
  Result.create(
      answer_id: 16,
      user_id: [1, 2, 3, 4, 5, 6].sample
  )
end

5.times do |i|
  Result.create(
      answer_id: 17,
      user_id: [1, 2, 3, 4, 5, 6].sample
  )
end

15.times do |i|
  Result.create(
      answer_id: 18,
      user_id: [1, 2, 3, 4, 5, 6].sample
  )
end

Question.create(
    content: "Favorite time of day?",
    duedate: Date.today + 3.days,
    user_id: 4
)

Answer.create(
    content: "Morning",
    question_id: 7
)

Answer.create(
    content: "Noon",
    question_id: 7
)

Answer.create(
    content: "Night",
    question_id: 7
)

Answer.create(
    content: "Late night",
    question_id: 7
)

3.times do |i|
  Result.create(
      answer_id: 19,
      user_id: i + 1
  )
end

1.times do |i|
  Result.create(
      answer_id: 20,
      user_id: i + 1
  )
end

2.times do |i|
  Result.create(
      answer_id: 21,
      user_id: i + 2
  )
end

# 1.times do |i|
#   Result.create(
#       answer_id: 22,
#       user_id: [1, 2, 3, 4, 5, 6].sample
#   )
# end

Question.create(
    content: "Beatles knock knock",
    duedate: Date.today + 1.days,
    user_id: 5
)

Answer.create(
    content: "Hello",
    question_id: 8
)

Answer.create(
    content: "Goodbye",
    question_id: 8
)

Answer.create(
    content: "Hello you say goodbye, I say hello-O-o.",
    question_id: 8
)

2.times do |i|
  Result.create(
      answer_id: 23,
      user_id: i + 2
  )
end

1.times do |i|
  Result.create(
      answer_id: 24,
      user_id: i + 4
  )
end

1.times do |i|
  Result.create(
      answer_id: 25,
      user_id: i + 1
  )
end
