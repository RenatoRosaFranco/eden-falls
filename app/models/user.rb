# frozen_string_literal: true
class User < ApplicationRecord
  self.table_name = 'users'
  self.primary_key = 'id'

  has_many :albums,     dependent: :destroy
  has_many :categories, dependent: :destroy
  has_many :musics,     dependent: :destroy
  has_many :posts,      dependent: :destroy
  has_many :tours,      dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
end
