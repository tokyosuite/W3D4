class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :poll_id
      t.text :question
      t.timestamps
    end
  end
end
