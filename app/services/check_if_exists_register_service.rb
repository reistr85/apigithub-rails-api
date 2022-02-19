module CheckIfExistsRegisterService
  def check_exists_register_service(model)
    register = model.find_by_id(@id)
    
    unless register.present?
      raise "Registro não localizado"
    end
  end
end
