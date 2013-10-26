class CreateWebs < ActiveRecord::Migration
  def change
    create_table :webs do |t|
      t.references :user, index: true
      t.string :title
      t.text :description
      t.boolean :private

      t.timestamps
    end
    add_index :webs, :title
  end
end
