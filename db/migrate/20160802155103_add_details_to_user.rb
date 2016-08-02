class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :location, :string
    add_column :users, :i_can_teach_you, :string
    add_column :users, :i_want_to_learn, :string
    add_column :users, :happy_to_host, :boolean
    add_column :users, :happy_to_travel, :boolean
  end
end
