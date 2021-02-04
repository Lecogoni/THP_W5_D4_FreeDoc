class AddCityIndexToAppointment < ActiveRecord::Migration[6.0]
  def change
    add_reference :appointments, :city, foreign_key: true # rajoute dans appointments un identifiant de city"
  end
end
