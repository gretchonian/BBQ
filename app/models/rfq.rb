class Rfq < ApplicationRecord
  has_many :foods
  after_create :meat_selection
  
  validates_format_of :name, :with => /\A(?=.* )[^0-9`!@#\\\$%\^&*\;+_=]{4,}\z/, :on => :create
  validates_format_of :email, :with => /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i, :on => :create
  validates_format_of :phone_number, :with => /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/, :on => :create

  
  def meat_selection
    Food.create(type: "meat", name: "Pulled Pork", rfq_id: id)
    Food.create(type: "meat", name: "Pork Loin", rfq_id: id)
    Food.create(type: "meat", name: "Tri-Tip", rfq_id: id)
    Food.create(type: "meat", name: "Brisket", rfq_id: id)
    Food.create(type: "meat", name: "Pulled Beef", rfq_id: id)
    Food.create(type: "meat", name: "Ribs (St. Louis or Baby Back)", rfq_id: id)
    Food.create(type: "meat", name: "Chicken Thighs", rfq_id: id)
    Food.create(type: "meat", name: "German Sausages and Hot Links", rfq_id: id)
  end
  

end
