class Idea < ApplicationRecord
    has_many :comments
    mount_uploader :picture, PictureUploader
    belongs_to :user
end
