class PostsController < ApplicationController

  # GET /posts(.:format)
  def index
    # Sets @post to array containing All Posts
      @posts = Post.all
  end

  # GET /posts/new(.:format)
  def new
    # Sets @post to New Post
    @post = Post.new
  end

  # POST /posts/(.:format)
  def create
    # Sets @post to attributes of Post params hash
      @post = Post.new(post_params)

    # Decides action if Post is/is not saved
      if @post.save
        # Redirects to Posts#index if save is successful
          redirect_to posts_url
      else
        # Renders Posts#new template if save is unsuccessful
        render :new
      end
  end

  # Private methods
  private
    # Whitelists Post params hash
    def post_params
      # Post requires:
      # => title
      # => body
        params.require(:post).permit(:title, :body)
    end
end
