# fronze_string_literal: true

class PostsController < ApplicationController
  def index
    posts = Post.all

    render json: posts
  end

  def show
    posts = Post.find(permitted_params.to_h)

    render json: posts
  end

  def create
    false
  end

  def update
    false
  end

  def edit
    false
  end

  def destroy; end

  private

  def permitted_params
    params.permit(:id)
  end
end
