Rails.application.routes.draw do
  
root 'murids#front'
  resources :daftar_kursus
  resources :jenis_kursus
  resources :instrukturs

  get 'murids/index', to: 'murids#index', as: 'muridsindex'
  get 'murids/', to: 'murids#index', as: 'backmurid'
  get 'murids/new', to: 'murids#new', as: 'muridsnew'
  get 'murids/:id', to: 'murids#edit', constraints: { id: /\d+/ } ,as: 'murid'
  get 'murids/:id/show', to: 'murids#show', as: 'show'
  delete 'murids/:id', to: 'murids#destroy', as: 'muridsdelete'
  post 'murids', to: 'murids#create'


  get 'jenis_kursus', to: 'jenis_kurus#index', as: 'jkindex'
  get 'instrukturs', to: 'instrukturs#index', as: 'insindex'
  get 'daftar_kurus', to: 'daftar_kursus#index', as: 'daftarindex'
    
end
