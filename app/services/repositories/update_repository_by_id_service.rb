module Repositories
  class UpdateRepositoryByIdService
    include CheckIfExistsRegisterService

    def initialize(id, params)
      @id = id
      @params = params
      check_exists_register_service(Repository)
    end

    def execute
      repository = Repository.find_by_id(@id)
      repository.update(@params)
      repository
    end
  end
end
