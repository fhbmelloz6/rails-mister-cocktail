class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, : ingredient presence: true

  validates :cocktail, uniqueness: { scope: :ingredient }
  # for one ingredient there is only a cocktail
end
