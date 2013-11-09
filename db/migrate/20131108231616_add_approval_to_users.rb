class AddApprovalToUsers < ActiveRecord::Migration
  def change
    add_column :users, :approval, :string
  end
end
