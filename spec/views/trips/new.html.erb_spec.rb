require 'spec_helper'

describe "trips/new" do
  before(:each) do
    assign(:trip, stub_model(Trip,
      :origin => nil,
      :destination => nil
    ).as_new_record)
  end

  it "renders new trip form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", trips_path, "post" do
      assert_select "input#trip_origin[name=?]", "trip[origin]"
      assert_select "input#trip_destination[name=?]", "trip[destination]"
    end
  end
end
