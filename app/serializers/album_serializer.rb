# frozen_string_literal: true
class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :thubmnail, :name, :description,
             :release_date, :tags
  belongs_to :user
end
