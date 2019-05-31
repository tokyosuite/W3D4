# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
user1 = User.create(username: "SqueakyCheese")
user2 = User.create(username: "Pokemon_Fan")
user3 = User.create(username: "HackReactorTA")

Poll.destroy_all
poll1 = Poll.create(title: "Cheese Survey", user_id: user1.id)
poll2 = Poll.create(title: "aA Questionnaire", user_id: user3.id)
poll3 = Poll.create(title: "aA Salary Confidential Survey", user_id: user3.id)

Question.destroy_all 
ques1 = Question.create(poll_id: poll1.id, question: "The best cheese?")
ques2 = Question.create(poll_id: poll2.id, question: "Is App Academy any good?")
ques3 = Question.create(poll_id: poll3.id, question: "What range does the average salary of an aA graduate get?")

AnswerChoice.destroy_all 
ac1 = AnswerChoice.create(question_id: ques1.id, answer_choice: 'Swiss')
ac2 = AnswerChoice.create(question_id: ques1.id, answer_choice: 'Pepperjack')
ac3 = AnswerChoice.create(question_id: ques1.id, answer_choice: 'Gouda')

ac4 = AnswerChoice.create(question_id: ques2.id, answer_choice: 'Y')
ac5 = AnswerChoice.create(question_id: ques2.id, answer_choice: 'N')

ac7 = AnswerChoice.create(question_id: ques3.id, answer_choice: '< 100K')
ac8 = AnswerChoice.create(question_id: ques3.id, answer_choice: '>= 100K')

Response.destroy_all 
r1 = Response.create(answer_id: ac1.id, user_id: user1.id)
r2 = Response.create(answer_id: ac1.id, user_id: user2.id)
r3 = Response.create(answer_id: ac3.id, user_id: user3.id)

r4 = Response.create(answer_id: ac4.id, user_id: user1.id)
r5 = Response.create(answer_id: ac5.id, user_id: user2.id)

r6 = Response.create(answer_id: ac8.id, user_id: user1.id)
r7 = Response.create(answer_id: ac7.id, user_id: user3.id)
