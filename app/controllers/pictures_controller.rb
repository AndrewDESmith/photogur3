class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params(:id))
    # params is a method being called, which takes the :id parameter, and whose output is in turn returned as a parameter for the find method called on Picture.
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    # picture_params is a (private) method being called (defined below), whose output is returned into the creation of a new instance of the Picture table/model/object.
    if @picture.save
      redirect_to pictures_url
      # If the new instance of Picture is succesfully saved (the .save is a method called on the instance to check for this), then go to the index page (index.html.erb, whose path is pictures_url [localhost:3000/pictures]).
    else
      render :new
      # Otherwise, re-render the new picture creation form (located in the view associated with the action :new (new.html.erb) in order to enable the user to try again in creating a new picture.
    end
  end

  private
  def picture_params
    params.require(:picture).permit(:artist, :title, :url)
    # For the parameters of an instance of Picture (marked as required in order to allow the "flow through a predefined raise/rescue flow to end up as a 400 Bad Request with no effort."), only permit data associated with the artist, title, and url atttributes.
  end
end