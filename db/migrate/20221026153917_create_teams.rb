class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.date :founded_date

      t.timestamps
    end
  end
end
