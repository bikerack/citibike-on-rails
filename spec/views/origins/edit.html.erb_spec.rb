require 'spec_helper'

describe "origins/edit" do
  before(:each) do
    @origin = assign(:origin, stub_model(Origin,
      :address => "MyString",
      :latitude => 1.5,
      :longitude => 1.5,
      :station => nil
    ))
  end

  it "renders the edit origin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", origin_path(@origin), "post" do
      assert_select "input#origin_address[name=?]", "origin[address]"
      assert_select "input#origin_latitude[name=?]", "origin[latitude]"
      assert_select "input#origin_longitude[name=?]", "origin[longitude]"
      assert_select "input#origin_station[name=?]", "origin[station]"
    end
  end
end
