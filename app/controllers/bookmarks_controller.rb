class BookmarksController < ApplicationController
  def index
    #first, find all the bookmarks from the database
    # Bookmark.all runs SELECT * from bookmarks and is being saved in @bookmarks
    @bookmarks = Bookmark.all
  end
end
