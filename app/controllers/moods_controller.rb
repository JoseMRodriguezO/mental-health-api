class MoodsController < ApplicationController
  def create
    mood = Mood.new(
      user_id: params[:user_id],
      mood_type: params[:mood_type],
      mood_intensity: params[:mood_intensity],
    )
    # mood.user_id = current_user.id
    if mood.save
      render json: { message: "Mood created successfully" }, status: :created
    else
      render json: { errors: mood.errors.full_messages }, status: :bad_request
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
