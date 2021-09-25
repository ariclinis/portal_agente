class AddBiToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :bi, :string
  end
end
