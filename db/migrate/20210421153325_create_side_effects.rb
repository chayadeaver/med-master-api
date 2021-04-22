class CreateSideEffects < ActiveRecord::Migration[6.1]
  def change
    create_table :side_effects do |t|
      t.string :comment
      t.datetime :date
      t.integer :user_id
      t.integer :medicine_id
    end
  end
end
