class Desembarkation < ApplicationRecord
  belongs_to :embarkation
  belongs_to :armador
  before_create :default_values
  
  enum status: { "aguardando confirmação": 0, concluido:1 }
  
  def default_values
    self.status = 0
  end
end
