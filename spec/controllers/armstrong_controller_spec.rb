require 'rails_helper'

RSpec.describe ArmstrongController, type: :controller do
  render_views
  it 'test armstrong' do
    get :view, :a => 1, :b => 100
    expect (response.body).not_to be_nil
  end

end
