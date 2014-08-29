require 'spec_helper'

describe "mercadoria/edit" do
  before(:each) do
    @mercadorium = assign(:mercadorium, stub_model(Mercadorium,
      :nome => "MyString",
      :descricao => "MyText",
      :preco => 1,
      :precoumcbm => 1,
      :precomeiodevinte => 1,
      :altura => 1,
      :largura => 1,
      :comprimento => 1,
      :precofrete => 1,
      :imposto => 1,
      :precodevenda => 1,
      :precodaconco => 1,
      :vendamensal => 1,
      :outroscustosdevenda => 1
    ))
  end

  it "renders the edit mercadorium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mercadorium_path(@mercadorium), "post" do
      assert_select "input#mercadorium_nome[name=?]", "mercadorium[nome]"
      assert_select "textarea#mercadorium_descricao[name=?]", "mercadorium[descricao]"
      assert_select "input#mercadorium_preco[name=?]", "mercadorium[preco]"
      assert_select "input#mercadorium_precoumcbm[name=?]", "mercadorium[precoumcbm]"
      assert_select "input#mercadorium_precomeiodevinte[name=?]", "mercadorium[precomeiodevinte]"
      assert_select "input#mercadorium_altura[name=?]", "mercadorium[altura]"
      assert_select "input#mercadorium_largura[name=?]", "mercadorium[largura]"
      assert_select "input#mercadorium_comprimento[name=?]", "mercadorium[comprimento]"
      assert_select "input#mercadorium_precofrete[name=?]", "mercadorium[precofrete]"
      assert_select "input#mercadorium_imposto[name=?]", "mercadorium[imposto]"
      assert_select "input#mercadorium_precodevenda[name=?]", "mercadorium[precodevenda]"
      assert_select "input#mercadorium_precodaconco[name=?]", "mercadorium[precodaconco]"
      assert_select "input#mercadorium_vendamensal[name=?]", "mercadorium[vendamensal]"
      assert_select "input#mercadorium_outroscustosdevenda[name=?]", "mercadorium[outroscustosdevenda]"
    end
  end
end
