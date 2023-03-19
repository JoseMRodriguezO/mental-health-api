Rails.application.routes.draw do
  get "/users" => "users#index"
  get "/moods/:id" => "moods#show"
  get "/journal_entries/:id" => "journal_entries#show"

  post "/moods" => "moods#create"
  post "/journal_entries" => "journal_entries#create"

  # patch "/moods/:id" => "moods#update"ra
  # patch "/journal_entries/:id" => "journal_entries#update"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end
