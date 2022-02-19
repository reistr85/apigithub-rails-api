module Repositories
  class UpdateRepositoryByIdService
    def initialize(id, params)
      @id = id
      @params = params
    end

    def execute
      repository = Repository.find_by_id(@id)

      if repository.present?
        repository.update(@params)
        repository
      else
        raise "Registro não localizado"
      end
    end
  end
end
