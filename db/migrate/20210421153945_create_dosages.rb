class CreateDosages < ActiveRecord::Migration[6.1]
  def change
    create_table :dosages do |t|
      t.integer :user_id
      t.integer :medicine_id
      t.integer :amount
      t.datetime :startDate
      t.datetime :endDate
      
    end
  end
end
