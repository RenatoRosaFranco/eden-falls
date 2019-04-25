# frozen_string_literal: true
class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :thumbnail, :name, :description,
             :release_date, :tags
  belongs_to :user
end
