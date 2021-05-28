class Task < ApplicationRecord
    scope :default_sort, -> {order(position: :desc)}
end
