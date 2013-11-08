class MediaObject < ActiveRecord::Base
  belongs_to :step

  has_attached_file :image, styles: APPCONFIG['media_object']['styles'].symbolize_keys

  validates_attachment_presence :image
  validates_attachment_size :image, less_than: APPCONFIG['media_object']['image_size_in_mb'].megabytes
  # Validates that the files uploaded are images
  # Before using this validation check which content types are needed for IE
  # validates_attachment_content_type :image, content_type: APPCONFIG['media_object']['image_valid_content_types']
end
