class Post < ApplicationRecord

validates :title, presence: true
validates :post, presence: true

end
