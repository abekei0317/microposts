class AddProfileLocationToUser < ActiveRecord::Migration
  def change
    add_column :users, :about, :string
    add_column :users, :location, :string
  end
end
