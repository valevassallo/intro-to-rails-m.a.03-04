class Trip < ApplicationRecord
  belongs_to :flight
  belongs_to :program
  belongs_to :airportout, class_name: "Airport"
  belongs_to :airportout, class_name: "Airport"
  has_many :scales
end
