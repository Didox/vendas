class Cliente < ApplicationRecord
  validates :nome, :telefone, presence: true
  validates :telefone, uniqueness: true
end
