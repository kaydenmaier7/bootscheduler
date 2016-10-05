class CreateBoots < ActiveRecord::Migration[5.0]
  def change
    create_table :boots do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :phone
      t.string :role

      t.timestamps
    end
  end
end
