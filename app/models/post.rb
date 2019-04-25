# frozen_string_literal: true
class Post < ApplicationRecord
  self.table_name = 'posts'
  self.primary_key = 'id'

  belongs_to :category
  belongs_to :user

  validates  :thumbnail,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: { minimum: 3, maximum: 245 }

  validates  :title,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: { minimum: 3, maximum: 50 }

  validates  :description,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: { minimum: 3, maximum: 245 }

  validates  :content,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: { minimum: 3, maximum: 10_000 }

  validates  :published,
             presence: false,
             allow_blank: true

  validates  :tags,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: { minimum: 3, maximum: 145 }

  validates  :category_id,
             presence: true,
             uniqueness: false,
             allow_blank: false

  validates  :user_id,
             presence: true,
             uniqueness: false,
             allow_blank: false
end
