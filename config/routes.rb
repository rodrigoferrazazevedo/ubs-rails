Rails.application.routes.draw do
  
  namespace 'api' do
    namespace 'v1' do
      #resources :find_ubs   
      get 'find_ubs', to: 'find_ubs#index' #all values      
      get 'find_ubs/:latitude/:longitude', to: 'find_ubs#show' , constraints: { latitude: /[^\/]+/, longitude: /[^\/]+/ } #specific values by latitude/longitude. 
      # Constraint above: regex to enable dots because dot is used as a separator for formatted routes, then is unable for default  
    end
  end
  
end
