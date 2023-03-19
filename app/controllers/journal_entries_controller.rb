class JournalEntriesController < ApplicationController
  def create
    journal_entries = JournalEntry.new(
      user_id: params[:user_id],
      title: params[:title],
      content: params[:content],
    )
    # journalEntry.user_id = current_user.id
    if journal_entries.save
      render json: { message: "Journal entry created successfully" }, status: :created
    else
      render json: { errors: journal_entries.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @journal_entry = JournalEntry.find_by(id: params[:id])
    render :show
  end

  # def update_journal_entry
  #   user = User.find(params[:id])
  #   if user.update(journal_entry: params[:journal_entry])
  #     render json: { message: "Journal entry updated successfully" }, status: :ok
  #   else
  #     render json: { errors: user.errors.full_messages }, status: :bad_request
  #   end
  #end
end
