class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :description
      t.text :content
      t.text :answer

      t.timestamps
    end
  end
end
