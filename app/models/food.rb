class Food < ApplicationRecord
  belongs_to :rfq
  # has_many :meats

  self.inheritance_column = :types
  def self.types
      %w(Meat Side)
  end
end
 

