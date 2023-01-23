class Article < ApplicationRecord
    validates :title, presence: t
end
