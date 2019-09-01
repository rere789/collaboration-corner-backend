class PostsController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]

    def index
        @posts = Post.all
        render(json: @posts)
      end
    
      def show
        @post = Post.find(params[:id])
        render(json: @post)
      end
    
      def create
        @post = Post.new(params.permit(:description, :needed_skillset, :snippet))
        @post.save
      end
    
      def update
        @post = Post.find(params[:id])
        @post.update(post_params)
      end
    
      def destroy
        @post = Post.find(params[:id])
        @post.destroy
      end
    
      private
    
      def post_params
        params.require(:post).permit(:description, :needed_skillset, :snippet, :user_id)
      end
end
