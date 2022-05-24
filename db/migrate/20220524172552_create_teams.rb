class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.integer :userId
      t.integer :sportId

      t.timestamps
    end
  end
end
