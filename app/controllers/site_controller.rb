class SiteController < ApplicationController
  def index
    count = cookies[:visit_count] || 1
    cookies[:visit_count] = count.to_i + 1
  end
end
