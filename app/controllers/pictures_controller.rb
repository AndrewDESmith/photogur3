class PicturesController < ApplicationController
  def index
    @pictures = [{
      :title => "Bob",
      :artist => "Billy Bob",
      :url => "http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg"
    },
    {
      :title => "Ned",
      :artist => "Flanders",
      :url => "http://bitmakerlabs.s3.amazonaws.com/photogur/wave.jpg"
    },
    {
      :title => "Homer",
      :artist => "Simpson",
      :url => "http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg"
    }
  ]
  end

  def show
    @pictures = [
      {
        :title => "Bob",
        :artist => "Billy Bob",
        :url => "http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg"
      },
      {
        :title => "Ned",
        :artist => "Flanders",
        :url => "http://bitmakerlabs.s3.amazonaws.com/photogur/wave.jpg"
      },
      {
        :title => "Homer",
        :artist => "Simpson",
        :url => "http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg"
      }
    ]
    @picture = @pictures[params[:id].to_i]
  end

  def new
  end

  def create
    render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, ARtist: #{params[:artist]}"
  end
end