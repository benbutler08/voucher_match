class AddAttributesToCandidates < ActiveRecord::Migration[5.1]
  def change
    add_column :candidates, :name, :string
    add_column :candidates, :email, :string
  end
end
