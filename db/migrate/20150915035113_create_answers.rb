class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :body
      t.references :question

      t.timestamps null: false
    end
    add_foreign_key :body, :question, :answer 
  end
end

