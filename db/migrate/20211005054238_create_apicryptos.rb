class CreateApicryptos < ActiveRecord::Migration[6.1]
  def change
    create_table :apicryptos do |t|

      t.timestamps
    end
  end
end
