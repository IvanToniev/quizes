class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :Quiz, index: true
      t.belongs_to :User, index: true
      t.belongs_to :Question, index: true
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :success

      t.timestamps
    end
  end
end
