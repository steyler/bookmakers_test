class GraphicController < ApplicationController
  # @bookmarks = Bookmark.group(:title).count
  def index
    @bookmarks = Bookmark.joins(:category).group("categories.name").count
    @carlitos = Bookmark.joins(:kind).group("kinds.name").count
  end
end
