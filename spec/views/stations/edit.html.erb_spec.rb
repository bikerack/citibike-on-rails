require 'spec_helper'

describe "stations/edit" do
  before(:each) do
    @station = assign(:station, stub_model(Station,
      :address => "MyString",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders the edit station form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", station_path(@station), "post" do
      assert_select "input#station_address[name=?]", "station[address]"
      assert_select "input#station_latitude[name=?]", "station[latitude]"
      assert_select "input#station_longitude[name=?]", "station[longitude]"
    end
  end
end
