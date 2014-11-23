class Article < ActiveRecord::Base
	attr_accessible :name, :description, :gender, :have_comments, :article_type, :birthday
	validates_presence_of :name
	has_many :comments, as: :commentable
	Types = ['Sports', 'movies', 'wether', 'technology', 'poltics']
end
