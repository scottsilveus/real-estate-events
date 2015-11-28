class AddUserInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :home_phone, :string
    add_column :users, :cell_phone, :string
    add_column :users, :dob, :datetime
    add_column :users, :gender, :string
    add_column :users, :status, :string
  end
end
