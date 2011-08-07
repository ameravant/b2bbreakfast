class ApplicationController < ActionController::Base
  before_filter :cms_for_layout, :only => [ :index, :show, :new, :create, :edit, :update, :comment ]

  require "#{RAILS_ROOT}/vendor/plugins/siteninja/siteninja_core/app/controllers/application_controller.rb"
  before_filter :init_search

  private 
  def init_search
    @searches = Search.new
  end
  def cms_for_layout
    @menu = Page.visible
    @settings = Setting.first
    @footer_pages = Page.find(:all, :conditions => {:show_in_footer => true}, :order => :footer_pos )
    @upcoming_events = Event.future.soonest
    @sidebar_links = Link.all(:conditions => {:feature_in_sidebar => true}).sort_by(&:rand)
  end

  
end

