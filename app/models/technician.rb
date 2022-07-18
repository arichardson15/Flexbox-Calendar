class Technician < ApplicationRecord
  attribute :id, :integer
  attribute :name, :string

  has_many :work_orders

end
