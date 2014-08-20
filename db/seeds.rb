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
  Question.create(title: 'Conditions', description: 'How do you check a condition in ruby?', content: 'if, while, what', answer: 'if')
]