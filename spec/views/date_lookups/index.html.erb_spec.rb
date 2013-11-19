require 'spec_helper'

describe "date_lookups/index" do
  before(:each) do
    assign(:date_lookups, [
      stub_model(DateLookup,
        :name => "Name"
      ),
      stub_model(DateLookup,
        :name => "Name"
      )
    ])
  end

  it "renders a list of date_lookups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
