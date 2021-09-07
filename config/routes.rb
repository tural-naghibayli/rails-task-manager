Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # VERB "PATH", to: "CONTROLLER#ACTION"


  # SEE all tasks an
  get 'tasks', to: 'tasks#index'

  # CREATE NEW task
  get 'tasks/new', to: 'tasks#new', as: :new_task # form route; needs to be above show route
  post 'tasks', to: 'tasks#create' # submit action for form


  # SEE ONE TASK
  get 'tasks/:id', to: 'tasks#show', as: :task

  # UPDATE EXISTING TASK
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task # our edit form
  patch 'tasks/:id', to: 'tasks#update' # submit action for our edit form

  # DELETE ONE TASK
  delete 'tasks/:id', to: 'tasks#destroy'
end
