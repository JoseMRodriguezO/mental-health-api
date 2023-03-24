Rails.application.routes.draw do
  get "/journal_entries" => "journal_entries#index"
  get "/journal_entries/:id" => "journal_entries#show"

  get "/moods" => "moods#index"
  post "/moods" => "moods#create"
  post "/journal_entries" => "journal_entries#create"

  patch "/journal_entries/:id" => "journal_entries#update"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  delete "/journal_entries/:id" => "journal_entries#destroy"
end
