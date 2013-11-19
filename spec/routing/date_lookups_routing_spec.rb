require "spec_helper"

describe DateLookupsController do
  describe "routing" do

    it "routes to #index" do
      get("/date_lookups").should route_to("date_lookups#index")
    end

    it "routes to #new" do
      get("/date_lookups/new").should route_to("date_lookups#new")
    end

    it "routes to #show" do
      get("/date_lookups/1").should route_to("date_lookups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/date_lookups/1/edit").should route_to("date_lookups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/date_lookups").should route_to("date_lookups#create")
    end

    it "routes to #update" do
      put("/date_lookups/1").should route_to("date_lookups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/date_lookups/1").should route_to("date_lookups#destroy", :id => "1")
    end

  end
end
