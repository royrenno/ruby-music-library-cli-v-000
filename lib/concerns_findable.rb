module Concerns::Findable

  def find_by_name(name)
    self.all.find{|instance| instance.name == name}
  end

  def find_or_create_by_name(name)
    if find_by_name(name) == nil
      self.create(name)
    else
      self.find_by_name(name)
    end
  end
end
