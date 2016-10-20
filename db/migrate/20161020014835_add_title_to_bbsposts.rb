class AddTitleToBbsposts < ActiveRecord::Migration
  def change
    add_column :bbsposts, :title, :string
  end
end
