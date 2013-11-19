require "spec_helper"

describe OriginsController do
  describe "routing" do

    it "routes to #index" do
      get("/origins").should route_to("origins#index")
    end

    it "routes to #new" do
      get("/origins/new").should route_to("origins#new")
    end

    it "routes to #show" do
      get("/origins/1").should route_to("origins#show", :id => "1")
    end

    it "routes to #edit" do
      get("/origins/1/edit").should route_to("origins#edit", :id => "1")
    end

    it "routes to #create" do
      post("/origins").should route_to("origins#create")
    end

    it "routes to #update" do
      put("/origins/1").should route_to("origins#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/origins/1").should route_to("origins#destroy", :id => "1")
    end

  end
end
