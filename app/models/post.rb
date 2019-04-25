# frozen_string_literal: true
class Post < ApplicationRecord
  self.table_name = 'posts'
  self.primary_key = 'id'

  belongs_to :category
  belongs_to :user
end
