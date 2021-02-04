class AddCityIndexToPatient < ActiveRecord::Migration[6.0]
  def change
    add_reference :patients, :city, foreign_key: true # rajoute dans patients un identifiant de city"
  end
end
