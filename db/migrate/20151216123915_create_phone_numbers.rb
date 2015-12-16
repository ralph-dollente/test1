class CreatePhoneNumbers < ActiveRecord::Migration
  def change
    create_table :phone_numbers do |t|
      t.string :msisdn, index: true
      t.string :email
      t.string :status
      t.datetime :available_after
      t.string :cilantro_identifier

      t.timestamps null: false
    end
  end
end
