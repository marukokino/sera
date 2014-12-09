require 'spec_helper'

describe "fabricas/edit" do
  before(:each) do
    @fabrica = assign(:fabrica, stub_model(Fabrica,
      :name => "MyString"
    ))
  end

  it "renders the edit fabrica form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fabrica_path(@fabrica), "post" do
      assert_select "input#fabrica_name[name=?]", "fabrica[name]"
    end
  end
end
