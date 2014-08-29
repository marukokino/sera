require 'spec_helper'

describe "mercadoria/index" do
  before(:each) do
    assign(:mercadoria, [
      stub_model(Mercadorium,
        :nome => "Nome",
        :descricao => "MyText",
        :preco => 1,
        :precoumcbm => 2,
        :precomeiodevinte => 3,
        :altura => 4,
        :largura => 5,
        :comprimento => 6,
        :precofrete => 7,
        :imposto => 8,
        :precodevenda => 9,
        :precodaconco => 10,
        :vendamensal => 11,
        :outroscustosdevenda => 12
      ),
      stub_model(Mercadorium,
        :nome => "Nome",
        :descricao => "MyText",
        :preco => 1,
        :precoumcbm => 2,
        :precomeiodevinte => 3,
        :altura => 4,
        :largura => 5,
        :comprimento => 6,
        :precofrete => 7,
        :imposto => 8,
        :precodevenda => 9,
        :precodaconco => 10,
        :vendamensal => 11,
        :outroscustosdevenda => 12
      )
    ])
  end

  it "renders a list of mercadoria" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
    assert_select "tr>td", :text => 12.to_s, :count => 2
  end
end
