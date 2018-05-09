class Host < ApplicationRecord
  def port
    self.id
  end
end
