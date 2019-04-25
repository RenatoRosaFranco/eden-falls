# frozen_string_literal: true
class Album < ApplicationRecord
  self.table_name = 'albums'
  self.primary_key = 'id'

  has_many   :musics, dependent: :destroy
  belongs_to :user

  validates  :thumbnail,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: { minimum: 3, maximum: 245 }

  validates  :name,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: { minimum: 3, maximum: 50 }

  validates  :description,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: { minimum: 3, maximum: 145 }

  validates  :release_date,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: { minimum: 3, maximum: 30}

  validates  :tags,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: { minimum: 3, maximum:  145 }

  validates  :user_id,
             presence: true,
             uniqueness: false,
             allow_blank: false
end
