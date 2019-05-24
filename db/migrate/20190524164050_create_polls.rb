class CreatePolls < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.string :question
      t.datetime :expiration_date

      t.timestamps
    end
  end
end
