class Employee < ApplicationRecord
  belongs_to :department
  validates :name, presence: true, length: { minimum: 3 }
  def self.search(search)
    where("LOWER(name) LIKE ?", "#{search.downcase}%")
  end
end
