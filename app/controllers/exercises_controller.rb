class ExercisesController < ApplicationController
  def create
    @track = Track.find(params[:track_id])
    @exercise = @track.exercises.create(params[:exercise].permit(:name, :sets, :reps))

    redirect_to track_path(@track)
  end
end
