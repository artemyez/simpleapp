class Employee < ApplicationRecord
  belongs_to :department

  def self.search(search)
    where("LOWER(name) LIKE ?", "%#{search.downcase}%")

  end
end
