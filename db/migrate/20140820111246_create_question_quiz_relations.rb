class CreateQuestionQuizRelations < ActiveRecord::Migration
  def change
    create_table :question_quiz_relations do |t|
      t.belongs_to :question, index: true
      t.belongs_to :quiz, index: true
      t.integer :show_order, default: 0

      t.timestamps
    end
  end
end
