class CreateApiV1MeetTeans < ActiveRecord::Migration[6.1]
  def change
    create_table :api_v1_meet_teans do |t|
      t.string :name 
      t.string :title
      t.string :linkedIn_url 
      t.string :youtube_url
      t.string :facebook_url

      t.timestamps
    end
  end
end
