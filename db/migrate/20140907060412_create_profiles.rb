class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
    	t.string :name
    	t.string :title #職稱
    	t.string :tel
    	t.string :office_room
    	t.string :lab_room
    	t.string :email

      t.timestamps
    end
  end
end
