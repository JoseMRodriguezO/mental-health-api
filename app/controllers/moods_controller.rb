class MoodsController < ApplicationController
  def index
    @moods = Mood.all
    render :index
  end

  def create
    @mood = Mood.new(
      user_id: current_user.id,
      mood_type: params[:mood_type],
      mood_intensity: params[:mood_intensity],
    )
    # mood.user_id = current_user.id
    if @mood.save
      render :show
    else
      render json: { errors: @mood.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @mood = Mood.find_by(id: params[:id])
    render :show
  end

  # def update_mood
  #   user = User.find(params[:id])
  #   if user.update(mood: params[:mood])
  #     render json: { message: "Mood updated successfully" }, status: :ok
  #   else
  #     render json: { errors: user.errors.full_messages }, status: :bad_request
  #   end
  # end
end
