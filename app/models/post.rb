class Post < ApplicationRecord
    has_many_attached :images
  
    def image_urls
      images.map { |image| Rails.application.routes.url_helpers.url_for(image) }
    end
  end
  