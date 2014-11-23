class Product < ActiveRecord::Base
	attr_accessible :name, :description
    shas_many :comments, as: :commentable
end
