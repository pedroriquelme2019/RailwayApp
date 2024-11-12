Rails.application.routes.draw do
  # Aquí puedes definir tus rutas
  
  # Ruta para la vista `show` en el controlador `vehicles`
  get '/show', to: 'vehicles#show'

  #match '*path', to: 'application#not_found', via: :all # Comentario o corrección aquí si es necesario

end
