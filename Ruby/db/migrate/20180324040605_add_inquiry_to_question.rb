class AddInquiryToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :inquiry, :text
  end
end
