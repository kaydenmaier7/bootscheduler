class CreateJoinTableBootTopic < ActiveRecord::Migration[5.0]
  def change
    create_join_table :boots, :topics do |t|
      t.index :boot_id
      t.index :topic_id
    end
  end
end
