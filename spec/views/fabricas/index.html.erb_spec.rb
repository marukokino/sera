require 'spec_helper'

describe "fabricas/index" do
  before(:each) do
    assign(:fabricas, [
      stub_model(Fabrica,
        :name => "Name"
      ),
      stub_model(Fabrica,
        :name => "Name"
      )
    ])
  end

  it "renders a list of fabricas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
