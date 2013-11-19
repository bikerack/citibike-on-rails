require 'spec_helper'

describe "destinations/show" do
  before(:each) do
    @destination = assign(:destination, stub_model(Destination,
      :address => "Address",
      :latitude => 1.5,
      :longitude => 1.5,
      :station => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(//)
  end
end
