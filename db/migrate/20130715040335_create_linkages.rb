class CreateLinkages < ActiveRecord::Migration
  def change
    create_table :linkages do |t|
      t.string :link
      t.text :description

      t.timestamps
    end
  end
end
