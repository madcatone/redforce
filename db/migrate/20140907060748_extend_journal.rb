class ExtendJournal < ActiveRecord::Migration
  def change
  	add_column :journals, :profile_id, :integer
  end
end
