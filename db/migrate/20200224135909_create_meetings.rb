class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.date :date
      t.string :place
      t.integer :status
      t.references :user_one, null: false, index: true, foreign_key: {to_table: :users}
      t.references :user_two, null: false, index: true, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
