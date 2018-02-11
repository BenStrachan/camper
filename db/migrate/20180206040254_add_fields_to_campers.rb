class AddFieldsToCampers < ActiveRecord::Migration[5.1]
  def change
    add_column :campers, :type_a, :string
    add_column :campers, :type_b, :string
    add_column :campers, :type_c, :string
    add_column :campers, :atm, :string
    add_column :campers, :tare, :decimal
  end
end
