class Api::V1::RootApiController < ApplicationController
  def index
    render json: {
      status: 'success',
      version: 'v1',
      base_url: 'http://localhost:3000/api/v1'
    }
  end
end
