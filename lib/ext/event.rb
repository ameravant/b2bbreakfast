class Event < ActiveRecord::Base
  belongs_to :link
  require "#{Rails.root}/vendor/plugins/siteninja/siteninja_events/app/models/event"
end

