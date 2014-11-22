class Event < ActiveRecord::Base
	attr_accessible :name, :description
    has_many :comments, as: :commentable
end
