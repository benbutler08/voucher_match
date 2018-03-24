class AddPasswordDigestToCandidates < ActiveRecord::Migration[5.1]
  def change
    add_column :candidates, :password_digest, :string
  end
end
