class CreateDosages < ActiveRecord::Migration[6.1]
  def change
    create_table :dosages do |t|
      t.integer :user_id
      t.integer :medicine_id
      t.float :amount
      t.string :startDate
      t.string :endDate
      
    end
  end
end
