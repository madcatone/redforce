class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
    	t.integer :journal_type  #分類為期刊或是會議
    	t.text	  :description   #期刊頁數年份
    	t.text    :title         #論文標題
    	t.string  :author        #作者群
    	t.integer :status ,default: 0 #保留

      t.timestamps
    end
  end
end
