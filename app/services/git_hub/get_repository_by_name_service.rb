module GitHub
  class GetRepositoryByNameService
    def initialize(name)
      @name = name
      @conn = Faraday::Connection.new 'https://api.github.com/repos'
    end

    def execute
      res = @conn.get "#{@name}"
      
      if res.status === 200
        res.body
      else
       raise "Repositório não localizado"
      end
    end
  end
end
