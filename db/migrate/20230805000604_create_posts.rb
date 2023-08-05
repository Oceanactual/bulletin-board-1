class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :body
      t.integer :board_id
      t.date :posted_on
      t.date :expires_on

      t.timestamps
    end
  end
end
