class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :course_name
      t.string :profesor_name
      t.string :course_length
      t.integer :number_videos

      t.timestamps
    end
  end
end
