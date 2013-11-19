require 'spec_helper'

describe "destinations/edit" do
  before(:each) do
    @destination = assign(:destination, stub_model(Destination,
      :address => "MyString",
      :latitude => 1.5,
      :longitude => 1.5,
      :station => nil
    ))
  end

  it "renders the edit destination form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", destination_path(@destination), "post" do
      assert_select "input#destination_address[name=?]", "destination[address]"
      assert_select "input#destination_latitude[name=?]", "destination[latitude]"
      assert_select "input#destination_longitude[name=?]", "destination[longitude]"
      assert_select "input#destination_station[name=?]", "destination[station]"
    end
  end
end
