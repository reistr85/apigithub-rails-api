module Repositories
  class GetRepositoryByIdService
    def initialize(id)
      @id = id
    end

    def execute
      repository = Repository.find_by_id(@id)

      if repository.present?
        repository
      else
        raise "Registro não localizado"
      end
    end
  end
end
