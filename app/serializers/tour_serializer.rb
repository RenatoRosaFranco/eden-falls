# frozen_string_literal: true
class TourSerializer < ActiveModel::Serializer
  attributes :id, :date, :location, :city, :state,
             :buy_ticket_link, :buy_vip_ticket_link
  belongs_to :user
end
