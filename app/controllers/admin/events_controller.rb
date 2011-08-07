class Admin::EventsController < AdminController
  unloadable # http://dev.rubyonrails.org/ticket/6001
  require "#{RAILS_ROOT}/vendor/plugins/siteninja/siteninja_events/app/controllers/admin/events_controller.rb"

  private


  def add_crumbs
    add_breadcrumb @cms_config['site_settings']['events_title'], "admin_events_path"
    @links = Link.all
  end
end

