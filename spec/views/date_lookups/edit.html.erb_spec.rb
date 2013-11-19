require 'spec_helper'

describe "date_lookups/edit" do
  before(:each) do
    @date_lookup = assign(:date_lookup, stub_model(DateLookup,
      :name => "MyString"
    ))
  end

  it "renders the edit date_lookup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", date_lookup_path(@date_lookup), "post" do
      assert_select "input#date_lookup_name[name=?]", "date_lookup[name]"
    end
  end
end
