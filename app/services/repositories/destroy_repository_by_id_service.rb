module Repositories
  class DestroyRepositoryByIdService
    include CheckIfExistsRegisterService
    
    def initialize(id)
      @id = id
      check_exists_register_service(Repository)
    end

    def execute
      repository = Repository.find_by_id(@id)
      repository.delete
    end
  end
end
