require "spec_helper"

describe MercadoriaController do
  describe "routing" do

    it "routes to #index" do
      get("/mercadoria").should route_to("mercadoria#index")
    end

    it "routes to #new" do
      get("/mercadoria/new").should route_to("mercadoria#new")
    end

    it "routes to #show" do
      get("/mercadoria/1").should route_to("mercadoria#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mercadoria/1/edit").should route_to("mercadoria#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mercadoria").should route_to("mercadoria#create")
    end

    it "routes to #update" do
      put("/mercadoria/1").should route_to("mercadoria#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mercadoria/1").should route_to("mercadoria#destroy", :id => "1")
    end

  end
end
