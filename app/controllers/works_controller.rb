class WorksController < ApplicationController
  def index
    @works = Work.all
    @movies = []
    @books = []
    @albums = []
    @works.each do |work|
      if work.category == "movie"
        @movies << work
      elsif work.category == "book"
        @books << work
      else
        @albums << work
      end
    end
  end
end
