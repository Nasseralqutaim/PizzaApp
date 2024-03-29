require 'rails_helper'
RSpec.describe PizzasController, type: :controller do
  render_views
  describe 'GET #index' do
    it 'responds successfully' do
      get :index
      expect(response).to be_successful
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end
end
