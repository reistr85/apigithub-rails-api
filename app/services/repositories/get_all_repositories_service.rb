module Repositories
  class GetAllRepositoriesService

    def initialize(params)
      @params = params
    end

    def execute
      return Repository.all
    end
  end
end
