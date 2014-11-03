Rails.application.routes.draw do
  root "logins#index"
  get "sessions" => "sessions"

end
