class PostsController < ApplicationController

    #define action
    def index
        #then define corresponding view in views/
        #these view files are created in erb which can take ruby
        #and display html
    end

    def create
        @post = Post.new(post_params)
        if @post.save
          render json: @post, status: :created
        else
          render json: @post.errors, status: :unprocessable_entity
        end
    end

    # def create
    #     post = Post.create!(post_params)
    #     redirect_to post
    # end
    
    private
        def post_params
            params.require(:post).permit(:title, images: [])
        end

end
