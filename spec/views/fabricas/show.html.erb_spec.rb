require 'spec_helper'

describe "fabricas/show" do
  before(:each) do
    @fabrica = assign(:fabrica, stub_model(Fabrica,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
