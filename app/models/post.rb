class Post < ApplicationRecord
	belongs_to :user
	
	validates :content, presence: true
    validates :quantity, presence: true
    validates :price, presence: true
    validates_inclusion_of :btc, :in => [true, false]

end
