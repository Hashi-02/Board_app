class PostsController < ApplicationController
  before_action :authenticate_user
  before_action :ensure_correct_user, {only: [:edit, :update, :destroy]}
  
  def index
    @posts = Board.all.order(created_at: :desc)
  end

  def new
    @post = Board.new
  end

  def edit
    @post = Board.find_by(id: params[:id])
  end

  def show
    @post = Board.find_by(id: params[:id])
    @user = User.find_by(id: @post.user_id)
  end

  def create
    @post = Board.new(content: params[:content],title: params[:title], user: params[:user], type: params[:type], user_id: @current_user.id )
    if @post.save
      flash[:notice] = "投稿を作成しました"
      redirect_to posts_index_path	
    else
      render posts_new_path	
    end
  end

  def destroy
    @post = Board.find_by(id: params[:id])
    @post.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to("/posts/index")
  end

  def update
    @post = Board.find_by(id: params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    @post.user = params[:user] 
    @post.type = params[:type]
    if @post.save
      flash[:notice] = "投稿を編集しました"
      redirect_to posts_index_path
    else
      render("posts/edit")
    end
  end

  def ensure_correct_user
    @post = Board.find_by(id: params[:id])
    if @post.user_id != @current_user.id
      flash[:notice] = "権限がありません"
      redirect_to posts_index_path
    end
  end

end
