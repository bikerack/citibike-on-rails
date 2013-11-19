require 'spec_helper'

describe "origins/show" do
  before(:each) do
    @origin = assign(:origin, stub_model(Origin,
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
