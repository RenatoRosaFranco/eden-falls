# frozen_string_literal: true
class Tour < ApplicationRecord
  self.table_name = 'tours'
  self.primary_key = 'id'

  belongs_to :user

  validates  :date,
             presence: true,
             uniqueness: false,
             allow_blank: false
  
  validates  :location,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: { minimum: 3, maximum: 145 }
  
  validates  :city,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: { minimum: 3, maximum: 50 }
  
  validates  :state,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: { minimum: 3, maximum: 30 }
  
  validates  :buy_ticket_link,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: { minimum: 3, maximum: 245 }
  
  validates  :buy_vip_ticket_link,
             presence: true,
             uniqueness: false,
             allow_blank: false,
             length: { minimum: 3, maximum: 245 }
  
  validates  :user_id,
             presence: true,
             uniquness: false,
             allow_blank: false
end
