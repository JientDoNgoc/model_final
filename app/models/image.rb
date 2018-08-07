class Image < ActiveRecord::Base
   belongs_to :article, optional: true
   
end 