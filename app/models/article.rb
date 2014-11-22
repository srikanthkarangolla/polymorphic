class Article < ActiveRecord::Base
	attr_accessible :name, :description, :gender, :have_comments, :article_type
	has_many :comments, as: :commentable
	Types = ['Sports', 'movies', 'wether', 'technology', 'poltics']
end
