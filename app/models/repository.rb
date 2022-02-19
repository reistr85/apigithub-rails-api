class Repository < ApplicationRecord
  before_save :no_save_repository_when_exist_github_id

  def no_save_repository_when_exist_github_id
    if Repository.find_by_github_id(self.github_id).present? 
      raise "Este repositório já está favoritado"
    end
  end
end
