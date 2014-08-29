require 'spec_helper'

describe "mercadoria/show" do
  before(:each) do
    @mercadorium = assign(:mercadorium, stub_model(Mercadorium,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/7/)
    rendered.should match(/8/)
    rendered.should match(/9/)
    rendered.should match(/10/)
    rendered.should match(/11/)
    rendered.should match(/12/)
  end
end
