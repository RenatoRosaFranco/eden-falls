class AddColumnNameAndNicknameAndAdminToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :nickname, :string
    add_column :users, :admin, :boolean
  end
end
