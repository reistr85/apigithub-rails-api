module Repositories
  class CreateRepositoryService
    def initialize(params)
      @params = params
    end

    def execute
      repository = Repository.new(@params)
      
      if repository.save
        repository
      else
        raise "Erro ao criar o repositório"
      end
    end
  end
end
