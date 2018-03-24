class AddSpectrumToResponse < ActiveRecord::Migration[5.1]
  def change
    add_column :responses, :spectrum, :integer
  end
end
