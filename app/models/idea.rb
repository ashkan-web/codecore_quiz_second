class Idea < ApplicationRecord
    belongs_to :user
    validates :title, presence: true, uniqueness: { case_sensitive: false  }
end
