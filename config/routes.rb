Rails.application.routes.draw do
  resources :students, only: [:index, :show, :edit, :update] 
  
  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.
  #get "students/:id", to: "students#show"
  ## !!FIX ME!!: probably needs a route for active page ##
  get "students/:id/active", to: "students#active"

end
