class CreateIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :issues do |t|
      t.references :reporter, polymorphic: true
      t.references :assignee, polymorphic: true
      t.string :summary
      t.string :status

      t.timestamps
    end
  end
end
