# frozen_string_literal: true
class Music < ApplicationRecord
  self.table_name = 'musics'
  self.primary_key = 'id'

  belongs_to :album, optional: true
  belongs_to :user
end
