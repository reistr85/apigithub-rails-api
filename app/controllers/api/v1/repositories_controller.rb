class Api::V1::RepositoriesController < ApplicationController
  def index
    begin
      repositories = Repositories::GetAllRepositoriesService.new(params).execute
      render json: repositories, status: :ok
    rescue Exception => e
      render json: { error: true, message: e }, status: 500
    end
  end

  def create
    begin
      repository = Repositories::CreateRepositoryService.new(repository_params).execute
      render json: repository, status: :created
    rescue Exception => e
      render json: { error: true, message: e }, status: 500
    end
  end

  def show
    begin
      repository = Repositories::GetRepositoryByIdService.new(params[:id]).execute
      render json: repository, status: :ok
    rescue Exception => e
      render json: { error: true, message: e }, status: 500
    end
  end

  def update
    begin
      repository = Repositories::UpdateRepositoryByIdService.new(params[:id], repository_params).execute
      render json: repository, status: :ok
    rescue Exception => e
      render json: { error: true, message: e }, status: 500
    end
  end

  def destroy
    begin
      res = Repositories::DestroyRepositoryByIdService.new(params[:id]).execute
      render json: {}, status: :no_content
    rescue Exception => e
      render json: { error: true, message: e }, status: 500
    end
  end

  private

  def repository_params
    params.require(:repository).permit(:github_id, :name, :description, :url, :avatar_url, :stargazers_count, :language)
  end
end
