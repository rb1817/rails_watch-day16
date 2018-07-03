class Movie < ApplicationRecord
                     #컬럼       업로더
    mount_uploader :image_path, ImageUploader
    belongs_to :user
end
