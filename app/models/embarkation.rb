class Embarkation < ApplicationRecord
  belongs_to :armador
  belongs_to :delegation
  before_create :default_values
  
  enum status: { processado: 0, concluido: 1}
  
  def default_values
    self.status = 0
  end
end
