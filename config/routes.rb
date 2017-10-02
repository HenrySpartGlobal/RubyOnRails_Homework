Rails.application.routes.draw do
  resources :countries

	root to: "static#home"

end

