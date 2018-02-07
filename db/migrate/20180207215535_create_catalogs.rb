class CreateCatalogs < ActiveRecord::Migration[5.1]
  def change
    create_table :catalogs do |t|
      t.references :course, foreign_key: true
      t.references :student, foreign_key: true
    end
  end
end
