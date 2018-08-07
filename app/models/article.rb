class Article < ActiveRecord::Base
    has_many :texts, :images
    
end