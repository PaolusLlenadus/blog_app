class PostsController < ApplicationController

def create
@post = Post.new post_params
if @post.save 
redirect_to posts_path
else
render :new
end
end

def index
@post = Post.all
end

def new
@post = Post.new
end

def edit
@post = Post.find params [:id]
end

def destroy
raise params.inspect
end

private
def post_params
	params.require
end


end