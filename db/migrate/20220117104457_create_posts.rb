class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.references :user, null: false, foreign_key: true
<<<<<<< HEAD
      t.integer :views, default: 0
=======
      t.integer :views
>>>>>>> e5dda2ca2943b807e5e5173420a7b52ce5074dd8

      t.timestamps
    end
  end
end
