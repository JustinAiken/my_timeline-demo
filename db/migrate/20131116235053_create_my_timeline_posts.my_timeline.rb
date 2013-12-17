# This migration comes from my_timeline (originally 20131103135539)
class CreateMyTimelinePosts < ActiveRecord::Migration
  def change
    create_table :my_timeline_posts do |t|
      t.text     :full_text
      t.datetime :happened_on

      t.references :event
      t.timestamps
    end
  end
end
