class Article < ActiveRecord::Base
	attr_accessible :name, :description, :gender
	has_many :comments, as: :commentable
end
