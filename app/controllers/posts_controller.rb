class PostsController < ApplicationController

  
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
  end

  def create
    @post = Board.new(content: params[:content],title: params[:title], user: params[:user], type: params[:type])
    if @post.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/posts/index")
    else
      render("posts/new")
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
      redirect_to("/posts/index")
    else
      render("posts/edit")
    end
  end


end
