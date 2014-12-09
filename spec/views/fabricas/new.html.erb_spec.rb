require 'spec_helper'

describe "fabricas/new" do
  before(:each) do
    assign(:fabrica, stub_model(Fabrica,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new fabrica form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fabricas_path, "post" do
      assert_select "input#fabrica_name[name=?]", "fabrica[name]"
    end
  end
end
