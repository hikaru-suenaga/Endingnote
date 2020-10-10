class Mylife < ApplicationRecord
    mount_uploader :gallery, GalleryUploader
    belongs_to :user

end
