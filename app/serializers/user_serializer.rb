# frozen_string_literal: true
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :albums
  has_many :categories
  has_many :musics
  has_many :posts
  has_many :tours
end
