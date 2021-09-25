class AddDiasQueFicaToDesembarkations < ActiveRecord::Migration[6.0]
  def change
    add_column :desembarkations, :dias_que_fica, :integer
  end
end
