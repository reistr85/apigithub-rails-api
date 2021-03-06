module Repositories
  class GetRepositoryByIdService
    include CheckIfExistsRegisterService

    def initialize(id)
      @id = id
      check_exists_register_service(Repository)
    end

    def execute
      Repository.find_by_id(@id)
    end
  end
end
