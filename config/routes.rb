Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check


    get 'action', to: 'pages#action'
    get 'back', to: 'pages#back'
    get 'bbp', to: 'pages#bbp'
    get 'bmi', to: 'pages#bmi'
    get 'pages/login', to: 'pages#login'
    get 'pages/calorie', to: 'pages#calorie'
    get 'pages/BPR', to: 'pages#BPR'
    get 'pages/BS', to: 'pages#BS'
  get 'pages/cart', to: 'pages#cart'
  get 'pages/CCP', to: 'pages#CP'
  get 'pages/Chest', to: 'pages#Chest'
  get 'pages/copy', to: 'pages#copy'
  get 'pages/Directory', to: 'pages#directory'
  get 'pages/DS', to: 'pages#DS'
  get 'pages/edit_action', to: 'pages#edit_action'
  get 'pages/editroutine', to: 'pages#editroutine'
  get 'pages/header', to: 'pages#header'
  get 'pages/leg', to: 'pages#leg'
  get 'pages/M45DBE', to: 'pages#M45DBE'

  get 'pages/proceed', to: 'pages#proceed'
  get 'pages/PU', to: 'pages#pu'
  get 'pages/routine', to: 'pages#routine'
  get 'pages/routine_detail', to: 'pages#routine_detail'
  get 'pages/Routinechecking', to: 'pages#Routinechecking'
  get 'pages/routinereview', to: 'pages#routinereview'
  get 'pages/signup', to: 'pages#signup'
  get 'pages/tracking', to: 'pages#tracking'
  get 'pages/work_out_history', to: 'pages#work_out_history'
  get 'pages/workout_detail', to: 'pages#workout_detail'
    root 'pages#mainpage'



  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
