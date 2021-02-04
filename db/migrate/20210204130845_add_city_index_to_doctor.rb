class AddCityIndexToDoctor < ActiveRecord::Migration[6.0]
  def change
    add_reference :doctors, :city, foreign_key: true # rajoute dans doctors un identifiant de city"
  end
end
