class ReviewController < ApplicationController
  def index
    book_id = params[:book_id]
    @book = Book.where(id: book_id)
  end

  def show

    book_id = params[:book_id]
    @book = Book.find(book_id)
    @reviews = Review.where(book_id: params[:book_id])
    if params[:sort_by]
      if params[:sort_by] == "Most Upvoted"
        @reviews = @reviews.order(upvotes: :desc)
      end
      if params[:sort_by] == "Least Upvoted"
        @reviews = @reviews.order(:upvotes)
      end
      if params[:sort_by] == "Oldest"
        @reviews = @reviews.order(:created_at)
      end
      if params[:sort_by] == "Latest"
        @reviews = @reviews.order(created_at: :desc)
      end
    end
  end

  def publish
    Review.create(book_id: params[:book_id], name: params[:name], one_liner: params[:one_liner], positive: params[:positive], negative: params[:negative], rating: params[:rating], upvotes: 0)
    redirect_to review_show_path(book_id: params[:book_id])
  end

  def upvote
    @review = Review.find(params[:review_id])
    @review.upvotes = @review.upvotes.to_i + 1
    @review.save
    id = "c_review" + params[:review_id].to_s
    redirect_to review_show_path(book_id: params[:book_id], anchor: id)
  end
end
