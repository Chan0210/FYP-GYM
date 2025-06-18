Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  devise_for :users, controllers: {registrations: 'users/registrations'}



  get "up" => "rails/health#show", as: :rails_health_check


  get 'action', to: 'pages#action'
  get 'back', to: 'pages#back'
  get 'bbp', to: 'pages#BBP'
  get 'bmi', to: 'pages#bmi'
  get 'pages/login', to: 'pages#login'
  get 'calorie', to: 'pages#calorie'
  get 'brp', to: 'pages#BPR'
  get 'bs', to: 'pages#BS'
  get 'cart', to: 'pages#cart'
  get 'ccp', to: 'pages#CCP'
  get 'chest', to: 'pages#chest'
  get 'pages/copy', to: 'pages#copy'
  get 'directory', to: 'pages#directory'
  get 'ds', to: 'pages#ds'
  get 'edit_action', to: 'pages#edit_action'
  get 'editroutine', to: 'pages#editroutine'
  get 'header', to: 'pages#header'
  get 'leg', to: 'pages#leg'
  get 'm45dbe', to: 'pages#M45DBE'

  get 'proceed', to: 'pages#proceed'
  get 'pu', to: 'pages#PU'
  get 'routine', to: 'pages#routine'
  get 'routine_detail', to: 'pages#routine_detail'
  get 'routinechecking', to: 'pages#routinechecking'
  get 'routinereview', to: 'pages#routinereview'
  get 'signup', to: 'pages#signup'
  get 'tracking', to: 'pages#tracking'
  get 'workout_history', to: 'pages#workout_history'
  get 'workout_detail', to: 'pages#workout_detail'
  get 'mainpage', to: 'pages#mainpage'
  get 'bbp', to: 'pages#BBP'
  get 'arm', to: 'pages#arm'
  get 'shoulder', to: 'pages#shoulder'
  get 'admin_user_data', to: 'admin#admin_user_data'
  get 'admin_user_detail', to: 'admin#admin_user_detail'
  get 'adminadd', to: 'admin#adminadd'
  get 'adminedit', to: 'admin#adminedit'
  root 'pages#mainpage'



  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end