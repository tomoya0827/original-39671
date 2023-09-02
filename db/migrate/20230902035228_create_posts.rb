class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :explanatory_text, null: false
      t.integer :target_age_id, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
