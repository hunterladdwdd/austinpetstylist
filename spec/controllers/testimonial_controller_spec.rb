require 'spec_helper'

describe TestimonialsController do
  describe "GET new" do
    it "should set the @testimonial instance variable" do
      get :new
      expect(assigns(:testimonial)).to be_a_new(Testimonial)
    end

    it "renders the new form template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe "POST create" do
    let(:testimonial) { Fabricate(:testimonial) }

    before do
      session[:user_id] = Fabricate(:user).id
    end

    context "with valid attributes" do
      before do
        post :create, testimonial: Fabricate.attributes_for(:testimonial)
      end

      it "sets the @testimonial instance variable" do
        expect(Testimonial.count).to eq(1)
      end

      it "redirects to the root path" do
        expect(response).to redirect_to root_path
      end
    end

    context "with invalid attributes" do

    end
  end
end