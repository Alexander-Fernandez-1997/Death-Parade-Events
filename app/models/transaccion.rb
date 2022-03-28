class Transaccion < ApplicationRecord
  belongs_to :user
  belongs_to :entrada
end
