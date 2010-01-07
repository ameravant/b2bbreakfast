class Image < ActiveRecord::Base
  require "#{Rails.root}/vendor/plugins/siteninja/siteninja_core/app/models/image"
  has_attached_file :image, :styles => { :icon => "32x16>", :thumb => "48x36#", :small => "85x55#", :medium => "200x9999>", :large => "880x9999>", :slide => "472x365>", :sponsor => "120x65>", :sponsor_small => "89x48>" }
end
