class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :zip_code, :integer
    add_column :users, :happy_to_host, :boolean
    add_column :users, :happy_to_travel, :boolean
  end
end
