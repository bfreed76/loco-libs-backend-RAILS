class Stories < ActiveRecord::Migration[6.1]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :author
      t.integer :user_id
      t.text :content
      t.timestamps
  end
end
end
