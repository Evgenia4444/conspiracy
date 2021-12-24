class Post < ApplicationRecord
  
    validates :content, :presence => true,
                                        :length => { :minimum => 5 }

    has_many :commentts, :dependent => :destroy
    has_many :tags
    has_many :likes, dependent: :destroy
    belongs_to :user
    mount_uploader :image, ImageUploader
    belongs_to :category
end