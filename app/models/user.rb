class User < ActiveRecord::Base
	has_many :micropos
	has_many :microposts
end
