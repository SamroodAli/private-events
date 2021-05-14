class StaticPagesController < ApplicationController
  def home
    @events = Event.all
  end
end
