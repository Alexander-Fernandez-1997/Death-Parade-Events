class Entrada < ApplicationRecord
  belongs_to :event
  has_many :transaccions
end
