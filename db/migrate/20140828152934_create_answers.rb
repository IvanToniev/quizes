class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :content
      t.boolean :success

      t.timestamps
    end
  end
end
