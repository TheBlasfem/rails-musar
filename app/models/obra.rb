class Obra < ActiveRecord::Base
	validates :titulo, presence: true
	mount_uploader :imagen, ImagenUploader
end
