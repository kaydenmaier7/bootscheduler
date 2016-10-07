class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.references :boot, foreign_key: true
      t.integer :rating
      t.text :comment
      t.boolean :ask

      t.timestamps
    end
  end
end
