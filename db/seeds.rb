# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


admin = User.create(email: 'admin@example.com', password: '112233', first_name: 'Admin', last_name: 'Klass', admin: true)
normal_user = User.create(email: 'pesho@exmaple.com', password: '112233', first_name: 'Pesho', last_name: 'Peshunov', admin: false)
quiz = Quiz.create(user_id: admin.id, title: 'ruby quiz', date: Time.now)
quiz.questions << [
  Question.create(title: 'Conditions', description: 'How do you check a condition in ruby?', content: 'if, while, what', answer: 'if'),
  Question.create(title: 'RoR', description: 'How do you start a server?', content: 'rails s, start_server, server', answer: 'rails s'),
  Question.create(title: 'Which country has most population?', description: '', content: 'China, India, USA', answer: 'China'),
  Question.create(title: 'What is the answer of life?', description: 'Is it a number?', content: 'love, hate, 42', answer: '42')
]