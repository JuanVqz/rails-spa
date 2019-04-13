require 'rails_helper'

RSpec.describe "Categories", type: :request do

  let(:user) { create :user, password: '123123123' }
  let(:token) { token_generator(user.id) }

  before :each do
    @env = {}
    @env['HTTP_AUTHORIZATION'] = token
  end

  describe "GET /api/categories" do
    it "debe de regresar el listado de categorias" do
      get categories_path, headers: @env
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /api/categories/:id" do
    let(:category) { create :category }

    it "debe de regresar una categoria" do
      get category_path(category.id), headers: @env
      expect(response).to have_http_status(200)
    end
  end
end
