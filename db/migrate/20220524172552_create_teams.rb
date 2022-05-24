class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.references :userId, foreign_key: true
      t.references :sportId, foreign_key: true

      t.timestamps
    end
  end
end
