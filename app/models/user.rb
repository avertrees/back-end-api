class User < ApplicationRecord
    has_many :likes
    has_many :pins, through: :likes
end
