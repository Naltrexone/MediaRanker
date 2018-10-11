class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.string :voted_for
      t.date :voted_on

      t.timestamps
    end
  end
end
