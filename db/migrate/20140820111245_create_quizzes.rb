class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.belongs_to :default_user, index: true
      t.string :title
      t.datetime :date

      t.timestamps
    end
  end
end
