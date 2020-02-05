class TracksController < ApplicationController
  before_action :find_track, only: [:show, :edit, :update, :destroy]

  def index
    @tracks = Track.all.order('created_at DESC')
  end

  def show
  end

  def new
    @track = Track.new
  end

  def create
    @track = Track.new(track_params)
    if @track.save
      redirect_to @track
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @track.update(track_params)
      redirect_to @track
    else
      render 'edit'
    end
  end

  def destroy
    @track.destroy
    redirect_to root_path
  end

  private

  def track_params
    params.require(:track).permit(:date, :track, :condition, :length)
  end

  def find_track
    @track = Track.find(params[:id])
  end
end
