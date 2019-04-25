# frozen_string_literal: true
class Music < ApplicationRecord
  self.table_name = 'musics'
  self.primary_key = 'id'

  belongs_to :album, optional: true
  belongs_to :user

  validates  :name,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: { minimum: 3, maximum: 50 }

  validates  :description,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: { minimum: 3, maximum: 245 }
  
  validates  :letter,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: { minimum: 3, maximum: 5_000 }
  
  validates  :tags,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: { minimum: 3, maximum: 145 }
  
  validates  :user_id,
             presence: true,
             uniqueness: false,
             allow_blank: false
end
