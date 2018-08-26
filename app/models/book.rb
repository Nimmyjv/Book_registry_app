class Book < ApplicationRecord
  validates_presence_of :name, :author, :price, :category, :published
  validates :isbn, presence: true, length: { is: 13 }

  def self.search(search)
    where('name iLike ? OR author iLike ? OR isbn=?', "%#{search}%", "%#{search}%", "#{search}")
  end
end

