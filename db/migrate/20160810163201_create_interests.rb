class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.integer :user_id
      t.integer :cuisine_id
      t.boolean :teach
      t.boolean :learn

      t.timestamps null: false
    end
  end
end
