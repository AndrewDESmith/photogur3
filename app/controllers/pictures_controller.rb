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

  def picture0
    @picture = {
      :title => "Bob",
      :artist => "Billy Bob",
      :url => "http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg"
    }
  end

  def picture1
    @picture = {
      :title => "Ned",
      :artist => "Flanders",
      :url => "http://bitmakerlabs.s3.amazonaws.com/photogur/wave.jpg"
    }
  end

  def picture2
    @picture = {
      :title => "Homer",
      :artist => "Simspon",
      :url => "http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg"
    }
  end
end