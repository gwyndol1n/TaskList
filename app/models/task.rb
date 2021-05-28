class Task < ApplicationRecord
    scope :default_sort, -> {order(position: :asc)}

    after_initialize :set_defaults

    def set_defaults
        self.title ||= "New Task"
        self.position ||= 0
        self.is_done ||= false
        self.created_at ||= DateTime.now
        self.updated_at ||= DateTime.now
    end
end
