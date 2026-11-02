class CreateApplies < ActiveRecord::Migration[8.1]
  def change
    create_table :applies do |t|
      t.integer :job_id, null: false
      t.integer :geek_id, null: false
      t.boolean :read, null: false
      t.boolean :invited, null: false
      t.timestamps
    end
  end
end
