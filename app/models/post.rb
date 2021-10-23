class Post < ApplicationRecord
    validates :postauthor, :presence => true
    validates :content, :presence => true,
                                        :length => { :minimum => 5 }

    has_many :commentts, :dependent => :destroy
    has_many :tags
end