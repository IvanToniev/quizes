class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :quiz, index: true
      t.belongs_to :user, index: true
      t.belongs_to :question, index: true
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :success

      t.timestamps
    end
  end
end
