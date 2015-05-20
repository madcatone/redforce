class CreateGpFeedbacks < ActiveRecord::Migration
  def change
    create_table :gp_feedbacks, { :primary_key => :id, :id => false } do |t|
      t.integer :index
      t.string :name
      t.integer :id
      t.string :star
      t.string :language
      t.string :software
      t.string :phone
      t.datetime :comment_time
      t.text :comment
      t.text :reply
      t.datetime :reply_time
      t.text :tran_comment
      t.string :type
      t.string :gp_type
      t.string :gp_type_2
      t.text :g_comment

      t.timestamps
    end
  end
end
