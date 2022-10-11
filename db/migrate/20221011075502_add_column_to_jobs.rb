class AddColumnToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column(:jobs,:company_name,:text)
    add_column(:jobs,:job_type,:text)
    add_column(:jobs,:comapny_website,:text)
    add_column(:jobs,:location,:text)
  end
end
