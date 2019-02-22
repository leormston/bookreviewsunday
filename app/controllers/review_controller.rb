class ReviewController < ApplicationController
  def index
    book_id = params[:book_id]
    @book = Book.where(id: book_id)
  end

  def show
    book_id = params[:book_id]
    @book = Book.find(book_id)
    @reviews = Review.where(book_id: params[:book_id])
  end

  def publish
    Review.create(book_id: params[:book_id], name: params[:name], one_liner: params[:one_liner], positive: params[:positive], negative: params[:negative], rating: params[:rating])
    redirect_to review_show_path(book_id: params[:book_id])
  end
end
