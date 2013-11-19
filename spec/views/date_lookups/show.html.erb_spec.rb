require 'spec_helper'

describe "date_lookups/show" do
  before(:each) do
    @date_lookup = assign(:date_lookup, stub_model(DateLookup,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
