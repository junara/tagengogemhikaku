class Animal < ApplicationRecord
  extend Mobility
  translates :title, :name, type: :string
end
