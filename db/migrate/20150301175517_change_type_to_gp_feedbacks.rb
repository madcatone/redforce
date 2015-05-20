class ChangeTypeToGpFeedbacks < ActiveRecord::Migration
  def change
  	rename_column :gp_feedbacks, :type, :catalog
  end
end
