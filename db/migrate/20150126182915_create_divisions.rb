class CreateDivisions < ActiveRecord::Migration
  def change
    create_table(:divisions) do |t|
      t.column(:description, :varchar)
      t.column(:employee_id, :int)
    end
  end
end
