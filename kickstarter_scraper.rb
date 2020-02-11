require "nokogiri"
require "pry"

# projects: kickstarter.css("li.project.grid_4")
# title: projects.css("h2.bbcard_name strong a").text
# image_link: projects.css("div.project-thumbnail a img").attribute("src").value
# description: projects.css("p.bbcard_blurb").text
# percent_funded: project.css("ul.project-stats li.first.funded strong").text

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
  projects = {}
  title = project.css("h2.bbcard_name strong a").text
    projects[title.to_sym] = {}
  end
  projects
binding.pry
end