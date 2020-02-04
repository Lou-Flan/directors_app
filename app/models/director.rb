class Director < ApplicationRecord
    has_many :movies, dependent: :destroy
    has_one :salary, dependent: :destroy
end
