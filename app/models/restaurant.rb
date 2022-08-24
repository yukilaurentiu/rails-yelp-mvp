class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  
  validates :name, :address, presence: true
  validates :category, inclusion: ['chinese', 'italian', 'japanese', 'french', 'belgian']
end
