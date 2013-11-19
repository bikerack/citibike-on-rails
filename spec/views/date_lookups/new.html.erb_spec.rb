require 'spec_helper'

describe "date_lookups/new" do
  before(:each) do
    assign(:date_lookup, stub_model(DateLookup,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new date_lookup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", date_lookups_path, "post" do
      assert_select "input#date_lookup_name[name=?]", "date_lookup[name]"
    end
  end
end
