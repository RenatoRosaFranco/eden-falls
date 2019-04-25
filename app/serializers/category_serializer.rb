# frozen_string_literal: true
class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :tags
  belongs_to :category
end
