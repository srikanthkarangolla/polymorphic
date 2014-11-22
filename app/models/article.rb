class Article < ActiveRecord::Base
	attr_accessible :name, :description, :gender, :have_comments
	has_many :comments, as: :commentable
end
