require "spec_helper"

describe StationsController do
  describe "routing" do

    it "routes to #index" do
      get("/stations").should route_to("stations#index")
    end

    it "routes to #new" do
      get("/stations/new").should route_to("stations#new")
    end

    it "routes to #show" do
      get("/stations/1").should route_to("stations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/stations/1/edit").should route_to("stations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/stations").should route_to("stations#create")
    end

    it "routes to #update" do
      put("/stations/1").should route_to("stations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/stations/1").should route_to("stations#destroy", :id => "1")
    end

  end
end
