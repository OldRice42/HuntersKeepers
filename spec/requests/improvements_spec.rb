# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Improvements', type: :request do
  describe 'GET /improvements' do
    it 'works! (now write some real specs)' do
      get improvements_path
      expect(response).to have_http_status(200)
    end
  end
end
