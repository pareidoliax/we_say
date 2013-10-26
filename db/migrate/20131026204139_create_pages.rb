class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.references :web, index: true
      t.string :title
      t.text :body

      t.timestamps
    end
    add_index :pages, :title
  end
end
