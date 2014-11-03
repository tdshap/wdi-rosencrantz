Rails.application.routes.draw do
  resources :students

  resources :houses do 
    resources :students
  end
  post "/hogwarts" => "hogwarts#create"
  
#           Prefix Verb   URI Pattern                                   Controller#Action
#         students GET    /students(.:format)                           students#index
#                  POST   /students(.:format)                           students#create
#      new_student GET    /students/new(.:format)                       students#new
#     edit_student GET    /students/:id/edit(.:format)                  students#edit
#          student GET    /students/:id(.:format)                       students#show
#                  PATCH  /students/:id(.:format)                       students#update
#                  PUT    /students/:id(.:format)                       students#update
#                  DELETE /students/:id(.:format)                       students#destroy
#   house_students GET    /houses/:house_id/students(.:format)          students#index
#                  POST   /houses/:house_id/students(.:format)          students#create
# new_house_student GET    /houses/:house_id/students/new(.:format)      students#new
# edit_house_student GET    /houses/:house_id/students/:id/edit(.:format) students#edit
#    house_student GET    /houses/:house_id/students/:id(.:format)      students#show
#                  PATCH  /houses/:house_id/students/:id(.:format)      students#update
#                  PUT    /houses/:house_id/students/:id(.:format)      students#update
#                  DELETE /houses/:house_id/students/:id(.:format)      students#destroy
#           houses GET    /houses(.:format)                             houses#index
#                  POST   /houses(.:format)                             houses#create
#        new_house GET    /houses/new(.:format)                         houses#new
#       edit_house GET    /houses/:id/edit(.:format)                    houses#edit
#            house GET    /houses/:id(.:format)                         houses#show
#                  PATCH  /houses/:id(.:format)                         houses#update
#                  PUT    /houses/:id(.:format)                         houses#update
#                  DELETE /houses/:id(.:format)                         houses#destroy

end
