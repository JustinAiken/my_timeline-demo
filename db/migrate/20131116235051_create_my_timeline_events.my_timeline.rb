# This migration comes from my_timeline (originally 20131027171920)
class CreateMyTimelineEvents < ActiveRecord::Migration
  def change
    create_table :my_timeline_events do |t|
      t.text :description
      t.datetime :happened_on
      t.string :icon_name
      t.string :external_link
      t.string :original_id
      t.boolean :public, default: true
      t.integer :importance, default: 5

      t.references :user
      t.references :linkable, :polymorphic => true

      t.timestamps
    end
  end
end
