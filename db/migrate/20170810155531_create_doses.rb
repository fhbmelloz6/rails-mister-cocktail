class CreateDoses < ActiveRecord::Migration[5.0]
  def change
    create_table :doses do |t|
      t.string :description
      t.references :cocktail, foreign_key: true
      t.references :ingredient, foreign_key: true
      # cocktail and ingredient MUST be in singular
      # otherwise you should rollback, correct and migrate again
      t.timestamps
    end
  end
end
