class AddBirthDateToCars < ActiveRecord::Migration
  def change
    add_column :cars, :birth_date, :date
  end
end
