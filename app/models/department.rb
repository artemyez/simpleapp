class Department < ApplicationRecord
  has_many :employees
  validates_uniqueness_of :name
end
