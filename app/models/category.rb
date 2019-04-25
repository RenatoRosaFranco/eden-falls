# frozen_string_literal: true
class Category < ApplicationRecord
  self.table_name = 'categories'
  self.primary_key = 'id'

  has_many :posts, dependent: :nullify
  belongs_to :category
  belogns_to :user
end
