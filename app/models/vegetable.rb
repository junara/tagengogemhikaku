class Vegetable < ApplicationRecord
  extend Mobility
  translates :title, :name, type: :string
end
