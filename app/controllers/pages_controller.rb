class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def about

  end

  def writing

  end

  def podcast

  end
end
