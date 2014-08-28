class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :quiz, index: true
      t.references :user, index: true
      t.references :question, index: true
      t.text :content
      t.boolean :success

      t.timestamps
    end
  end
end
