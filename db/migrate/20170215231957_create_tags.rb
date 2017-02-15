class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :name
      t.integer :photo_id
    end

    add_column :photos, :tag_id, :integer
  end
end
