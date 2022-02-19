class Api::V1::GitHubController < ApplicationController
  def get_repository_by_name
    begin
      repository = GitHub::GetRepositoryByNameService.new(params[:name]).execute
      render json: repository, status: :ok
    rescue Exception => e
      render json: { error: true, message: [e] }, status: 500
    end
  end
end
