class CreateBacklinks < ActiveRecord::Migration
  def change
    create_table :backlinks do |t|
      t.string :project
      t.string :project_url
      t.string :backlink_url
      t.string :method
      t.datetime :published_at
      t.text :notes

      t.timestamps
    end
  end
end
