class CreateBbsposts < ActiveRecord::Migration
  def change
    create_table :bbsposts do |t|
      t.text :content
      t.string :username

      t.timestamps null: false
    end
    add_index :bbsposts, :created_at
  end
end
