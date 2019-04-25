class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
      t.date :date
      t.string :location
      t.string :city
      t.string :state
      t.string :buy_ticket_link
      t.string :buy_vip_ticket_link
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
