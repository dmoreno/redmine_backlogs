class AddIssuesRbcache < ActiveRecord::Migration
  def self.up
    create_table :rb_release_burndown_caches do |t|
      t.column :issue_id, :integer, :null => false
      t.column :value, :text
    end
    add_index :rb_release_burndown_caches, :issue_id
  end

  def self.down
    if ActiveRecord::Base.connection.table_exists?('rb_release_burndown_caches')
      drop_table :rb_release_burndown_caches
    end
  end
end
