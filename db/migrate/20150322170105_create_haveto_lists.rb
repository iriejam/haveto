class CreateHavetoLists < ActiveRecord::Migration
  def change
    create_table :haveto_lists do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
