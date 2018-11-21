class Product < ApplicationRecord
    mount_uploader :image, AvatarUploader
end
