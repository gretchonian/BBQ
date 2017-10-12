class Food < ApplicationRecord
  belongs_to :rfq

  self.inheritance_column = :types
  def self.types
      %w(Meat Side)
  end

end


