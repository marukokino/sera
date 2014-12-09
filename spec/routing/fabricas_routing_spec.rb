require "spec_helper"

describe FabricasController do
  describe "routing" do

    it "routes to #index" do
      get("/fabricas").should route_to("fabricas#index")
    end

    it "routes to #new" do
      get("/fabricas/new").should route_to("fabricas#new")
    end

    it "routes to #show" do
      get("/fabricas/1").should route_to("fabricas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fabricas/1/edit").should route_to("fabricas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fabricas").should route_to("fabricas#create")
    end

    it "routes to #update" do
      put("/fabricas/1").should route_to("fabricas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fabricas/1").should route_to("fabricas#destroy", :id => "1")
    end

  end
end
