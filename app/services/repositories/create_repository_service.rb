module Repositories
  class CreateRepositoryService
    def initialize(params)
      @params = params
    end

    def execute
      # repository = Repository.repository_exist_by_github_id(@params[:github_id])
      repository = Repository.new(@params)
      
      
      if repository.save
        repository
      else
        raise "Erro ao criar o repositório"
      end
    end
  end
end
