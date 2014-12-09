require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe FabricasController do

  # This should return the minimal set of attributes required to create a valid
  # Fabrica. As you add validations to Fabrica, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FabricasController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all fabricas as @fabricas" do
      fabrica = Fabrica.create! valid_attributes
      get :index, {}, valid_session
      assigns(:fabricas).should eq([fabrica])
    end
  end

  describe "GET show" do
    it "assigns the requested fabrica as @fabrica" do
      fabrica = Fabrica.create! valid_attributes
      get :show, {:id => fabrica.to_param}, valid_session
      assigns(:fabrica).should eq(fabrica)
    end
  end

  describe "GET new" do
    it "assigns a new fabrica as @fabrica" do
      get :new, {}, valid_session
      assigns(:fabrica).should be_a_new(Fabrica)
    end
  end

  describe "GET edit" do
    it "assigns the requested fabrica as @fabrica" do
      fabrica = Fabrica.create! valid_attributes
      get :edit, {:id => fabrica.to_param}, valid_session
      assigns(:fabrica).should eq(fabrica)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Fabrica" do
        expect {
          post :create, {:fabrica => valid_attributes}, valid_session
        }.to change(Fabrica, :count).by(1)
      end

      it "assigns a newly created fabrica as @fabrica" do
        post :create, {:fabrica => valid_attributes}, valid_session
        assigns(:fabrica).should be_a(Fabrica)
        assigns(:fabrica).should be_persisted
      end

      it "redirects to the created fabrica" do
        post :create, {:fabrica => valid_attributes}, valid_session
        response.should redirect_to(Fabrica.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved fabrica as @fabrica" do
        # Trigger the behavior that occurs when invalid params are submitted
        Fabrica.any_instance.stub(:save).and_return(false)
        post :create, {:fabrica => { "name" => "invalid value" }}, valid_session
        assigns(:fabrica).should be_a_new(Fabrica)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Fabrica.any_instance.stub(:save).and_return(false)
        post :create, {:fabrica => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested fabrica" do
        fabrica = Fabrica.create! valid_attributes
        # Assuming there are no other fabricas in the database, this
        # specifies that the Fabrica created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Fabrica.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => fabrica.to_param, :fabrica => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested fabrica as @fabrica" do
        fabrica = Fabrica.create! valid_attributes
        put :update, {:id => fabrica.to_param, :fabrica => valid_attributes}, valid_session
        assigns(:fabrica).should eq(fabrica)
      end

      it "redirects to the fabrica" do
        fabrica = Fabrica.create! valid_attributes
        put :update, {:id => fabrica.to_param, :fabrica => valid_attributes}, valid_session
        response.should redirect_to(fabrica)
      end
    end

    describe "with invalid params" do
      it "assigns the fabrica as @fabrica" do
        fabrica = Fabrica.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Fabrica.any_instance.stub(:save).and_return(false)
        put :update, {:id => fabrica.to_param, :fabrica => { "name" => "invalid value" }}, valid_session
        assigns(:fabrica).should eq(fabrica)
      end

      it "re-renders the 'edit' template" do
        fabrica = Fabrica.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Fabrica.any_instance.stub(:save).and_return(false)
        put :update, {:id => fabrica.to_param, :fabrica => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested fabrica" do
      fabrica = Fabrica.create! valid_attributes
      expect {
        delete :destroy, {:id => fabrica.to_param}, valid_session
      }.to change(Fabrica, :count).by(-1)
    end

    it "redirects to the fabricas list" do
      fabrica = Fabrica.create! valid_attributes
      delete :destroy, {:id => fabrica.to_param}, valid_session
      response.should redirect_to(fabricas_url)
    end
  end

end
