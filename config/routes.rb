Rails.application.routes.draw do

  get "/contacts", controller: "contacts", action: "contacts"

  get "/contact1", controller: "contacts", action: "contact1"

  get "/contact2", controller: "contacts", action: "contact2"

  get "/contact3", controller: "contacts", action: "contact3"

  get "/contact4", controller: "contacts", action: "contact4"
end
