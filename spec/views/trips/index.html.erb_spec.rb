require 'spec_helper'

describe "trips/index" do
  before(:each) do
    assign(:trips, [
      stub_model(Trip,
        :origin => nil,
        :destination => nil
      ),
      stub_model(Trip,
        :origin => nil,
        :destination => nil
      )
    ])
  end

  it "renders a list of trips" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
