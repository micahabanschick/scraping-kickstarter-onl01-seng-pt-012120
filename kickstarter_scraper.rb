require "nokogiri"
require "pry"

def create_project_hash
=begin   
  :projects => {
    "My Great Project"  => {
      :image_link => "Image Link",
      :description => "Description",
      :location => "Location",
      :percent_funded => "Percent Funded"
    },
    "Another Great Project" => {
      :image_link => "Image Link",
      :description => "Description",
      :location => "Location",
      :percent_funded => "Percent Funded"
    }
  }
=end
html = File.read('fixtures/kickstarter.html')
 
kickstarter = Nokogiri::HTML(html)
# projects: kickstarter.css("li.project.grid_4")
binding.pry
end