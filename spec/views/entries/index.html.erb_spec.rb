require 'spec_helper'

describe "entries/index" do
  before(:each) do
    assign(:entries, [
      stub_model(Entry,
        :user_id => "User",
        :post => "Post",
        :true => "True"
      ),
      stub_model(Entry,
        :user_id => "User",
        :post => "Post",
        :true => "True"
      )
    ])
  end

  it "renders a list of entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "Post".to_s, :count => 2
    assert_select "tr>td", :text => "True".to_s, :count => 2
  end
end
