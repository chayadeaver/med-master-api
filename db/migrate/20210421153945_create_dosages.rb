class CreateDosages < ActiveRecord::Migration[6.1]
  def change
    create_table :dosages do |t|
      t.integer :user_id
      t.integer :medicine_id
      t.float :amount
      t.string :start_date
      t.string :end_date
      
    end
  end
end
