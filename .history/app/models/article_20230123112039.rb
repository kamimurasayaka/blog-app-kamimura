class Article < ApplicationRecord
    validates :title, presence: true
    valid
end
