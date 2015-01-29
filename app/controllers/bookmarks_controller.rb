class BookmarksController < ApplicationController
  def index
    #first, find all the bookmarks from the database
    # Bookmark.all runs SELECT * from bookmarks and is being saved in @bookmarks
    @bookmarks = Bookmark.all
  end

  def new
    #used as an empty placeholder object in the html form
    # this object does not yet exist in the database
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.create(bookmark_params) #now this object is saved to the database
    #redirect method, takes a hash as an argument where action: is the key and :index is the value
    # redirect to the index controller action in order to display list of all bookmarks
    redirect_to action: :index
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.find(params[:id])
    @bookmark.update_attributes(bookmark_params)
    redirect_to action: :index
  end

  def destroy
    # first find the object we want it to destroy
    @bookmark = Bookmark.find(params[:id])

    # now execute the destroy command
    # destroy is better than delete b/c it will remove any orphaned rows that are left behind when you remove the row from the database and it will automatically delete any child dependents on that row.
    @bookmark.destroy
    redirect_to action: :index
  end

  private
  def bookmark_params
    #of the entire params hash, always return everything for the key, bookmark. then from that return value,  permit only certain attributes to be passed through
    params.require(:bookmark).permit(:url, :title, :comment, :favorite)
  end
end
