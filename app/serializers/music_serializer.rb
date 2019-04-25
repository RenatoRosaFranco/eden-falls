# frozen_string_literal: true
class MusicSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :link_path, :letter, :tags
  belongs_to :album
  belongs_to :user
end
