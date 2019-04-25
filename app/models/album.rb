# frozen_string_literal: true
class Album < ApplicationRecord
  self.table_name = 'albums'
  self.primary_key = 'id'

  has_many :musics, dependent: :destroy
  belongs_to :user
end
