require 'spec_helper'

describe "origins/index" do
  before(:each) do
    assign(:origins, [
      stub_model(Origin,
        :address => "Address",
        :latitude => 1.5,
        :longitude => 1.5,
        :station => nil
      ),
      stub_model(Origin,
        :address => "Address",
        :latitude => 1.5,
        :longitude => 1.5,
        :station => nil
      )
    ])
  end

  it "renders a list of origins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
