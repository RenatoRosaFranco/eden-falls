# frozen_string_literal: true
class Category < ApplicationRecord
  self.table_name = 'categories'
  self.primary_key = 'id'

  has_many   :posts, dependent: :nullify
  belongs_to :category
  belongs_to :user

  validates  :name,
             presence: true,
             uniqueness: true,
             allow_blank: false,
             length: { minimum: 3, maximum: 50 }

validates    :description,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: { minimum: 3, maximum: 145 }

validates    :tags,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: { minimum: 3, maximum: 150 }

validates    :user_id,
             presence: true,
             uniqueness: false,
             allow_blank: false
end
