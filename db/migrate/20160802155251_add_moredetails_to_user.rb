class AddMoredetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :my_story, :text
  end
end
