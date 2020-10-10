class Post < ApplicationRecord

validates :body, length: {minumum: 1, maximum: 280   }
end
