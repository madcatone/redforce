class CreateProblems < ActiveRecord::Migration
  def connection
    ActiveRecord::Base.establish_connection("problem_database_development").connection
  end
  def change
    create_table :problems do |t|

      t.timestamps
    end
  end
end
