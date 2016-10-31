class AddVoteToUser < ActiveRecord::Migration
  def change
    add_column :users, :candidate_id, :integer
  end
end
