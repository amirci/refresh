class CreateScaffolds < ActiveRecord::Migration
  def change
    create_table :scaffolds do |t|
      t.string :Post
      t.string :title

      t.timestamps null: false
    end
  end
end
