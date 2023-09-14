class AddBaseModels < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
    end

    create_table :skills do |t|
      t.string :name, null: false
    end
    
    create_table :user_skills do |t|
      t.references :user
      t.references :skill
      t.integer :years_experience
    end
  end
end
