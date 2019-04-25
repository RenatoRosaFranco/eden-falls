# frozen_string_literal: true
class Tour < ApplicationRecord
  self.table_name = 'tours'
  self.primary_key = 'id'

  belongs_to :user
end
