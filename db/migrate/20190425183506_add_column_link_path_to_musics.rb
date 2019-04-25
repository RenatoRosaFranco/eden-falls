class AddColumnLinkPathToMusics < ActiveRecord::Migration[5.2]
  def change
    add_column :musics, :link_path, :string
  end
end
