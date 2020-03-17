class Employee < ApplicationRecord
  belongs_to :department

  def self.search(search)
    where("name LIKE ?", "%#{search}%")

  end
end
