class JournalEntriesController < ApplicationController
  def index
    @journal_entries = JournalEntry.all
    render :index
  end

  def create
    @journal_entry = JournalEntry.new(
      user_id: current_user.id,
      title: params[:title],
      content: params[:content],
    )
    
    if @journal_entry.save
      render :show
    else
      render json: { errors: @journal_entry.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @journal_entry = JournalEntry.find_by(id: params[:id])
    render :show
  end

  def update
    @journal_entry = JournalEntry.find_by(id: params[:id])
    @journal_entry.update(
      title: params[:title] || @journal_entry.title,
      content: params[:content] || @journal_entry.content,
    )
    render :show
  end
end
