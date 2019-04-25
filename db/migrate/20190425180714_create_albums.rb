# frozen_string_literal: true
class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table   :albums do |t|
      t.string     :thumbnail
      t.string     :name
      t.text       :description
      t.date       :release_date
      t.string     :slug
      t.string     :tags
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
