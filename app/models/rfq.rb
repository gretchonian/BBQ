class Rfq < ApplicationRecord
  has_many :foods
  after_create :meat_selection
  after_create :side_selection
  after_update :send_rfq
  after_update :send_confirmation
  
  validates_format_of :name, :with => /\A(?=.* )[^0-9`!@#\\\$%\^&*\;+_=]{4,}\z/, :on => :create
  validates_format_of :email, :with => /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i, :on => :create
  validates_format_of :phone_number, :with => /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/, :on => :create
  validates_presence_of :people_attending
  validates_presence_of :catering_type
  

  
  def meat_selection
    Food.create(type: "meat", name: "Pulled Pork", rfq_id: id)
    Food.create(type: "meat", name: "Pork Loin", rfq_id: id)
    Food.create(type: "meat", name: "Tri-Tip", rfq_id: id)
    Food.create(type: "meat", name: "Brisket", rfq_id: id)
    Food.create(type: "meat", name: "Pulled Beef", rfq_id: id)
    Food.create(type: "meat", name: "Ribs (St. Louis)", rfq_id: id)
    Food.create(type: "meat", name: "Ribs (Baby Back)", rfq_id: id)
    Food.create(type: "meat", name: "Chicken Thighs", rfq_id: id)
    Food.create(type: "meat", name: "German Sausages and Hot Links", rfq_id: id)
  end

  def side_selection
    Food.create(type: "side", name: "Coleslaw", rfq_id: id)
    Food.create(type: "side", name: "BBQ Beans", rfq_id: id)
    Food.create(type: "side", name: "Potato Salad", rfq_id: id)
    Food.create(type: "side", name: "Macaroni Salad", rfq_id: id)
    Food.create(type: "side", name: "Green Salad", rfq_id: id)
    Food.create(type: "side", name: "Caeser Salad", rfq_id: id)
    Food.create(type: "side", name: "Smoked Bacon Mac and Cheese", rfq_id: id)
    Food.create(type: "side", name: "Fruit Platter", rfq_id: id)
  end

  def foods_ordered(food_ids) 
    food_ids.keep_if{ |v| v != "" }  
    return food_ids.map{|e| Food.find(e).name } 
  end

  # def people_attending
  #   gets.chomp().to_i
  # end

  # HEAD_COUNT = {
  #   '45 to 75 people': '45-75',
  #   '76 to 100 people': '76-100',
  #   '101 to 150 people': '101-150',
  #   '151 to 300 people': '151-300',
  #   '301 people or more': '301+',
  # }

   CATERING_TYPE = {
    'Catering Service': true,
    'Drop-Off': false
  }

  def pricing
  #   1 Meat, 2 sides $13-$15
  # 2 Meats, 2 sides $15-$18
  # 3 Meats, 2 sides $18-$21
  # Additional sides $2 per person 

  # 1 Meat  $10-$12
  # 2 Meats $12-$15
  # 3 Meats $15-$18 
  end

  def catering_type_humanized
    CATERING_TYPE.invert[self.catering_type]
  end

  def send_rfq
    NotificationMailer.rfq_submitted(self).deliver
  end

  def send_confirmation
    NotificationMailer.rfq_thankyou(self).deliver
  end


end
