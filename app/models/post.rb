class Post < ActiveRecord::Base
	has_many :post_answers
end
