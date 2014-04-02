
require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get show" do
    get :show, id: books(:ender).id
    assert_response :success
    assert_not_nil assigns(:book)
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to @book
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :pages, :price)
  end
end
