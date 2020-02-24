class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :address, :string
    add_column :users, :description, :text
    add_column :users, :birth_date, :date
    add_column :users, :linkedin, :string
    add_column :users, :company_name, :string
    add_column :users, :company_ca, :integer
    add_column :users, :company_sector, :string
    add_column :users, :distance, :integer
  end
end
