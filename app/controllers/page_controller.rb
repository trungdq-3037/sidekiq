class PageController < ApplicationController
  def index; end

  def greeting
    # HelloJob.perform_at(10.seconds.from_now)
    HelloJob.perform_at(0.seconds.from_now)
  end

  def retry
    RetriesJob.perform_at(0.second.from_now)
  end

end
