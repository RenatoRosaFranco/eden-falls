# frozen_string_literal: true
class PostSerializer < ActiveModel::Serializer
  attributes :id, :thumbnail, :title, :description, :content,
             :published, :tags
  belongs_to :category
  belongs_to :user
end
