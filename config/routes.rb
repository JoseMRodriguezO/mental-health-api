Rails.application.routes.draw do
  get "/users" => "users#index"
  post "/moods" => "moods#create"
  post "/journal_entries" => "journal_entries#create"

  # patch "/moods/:id" => "moods#update"
  # patch "/journal_entries/:id" => "journal_entries#update"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end
