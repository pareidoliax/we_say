#Webs

directory = 'lib/assets'
page_titles = Dir.entries(directory).reject{ |i| !i.include?(".md") }

pages = []

page_titles.each do |title|
  pages << {title: title, body: File.read("#{directory}/#{title}")}
end

web_titles = %w(Apples Oranges Peaches Pears Watermellows Starfruit Plums Grapes Cherries)

web_description = 'In common language usage, "fruit" normally means the fleshy seed-associated structures of a plant that are sweet or sour and edible in the raw state, such as apples, oranges, grapes, strawberries, bananas, and lemons.'

web_titles.each do |web_title|
  web = Web.create(
    title: web_title,
    description: web_description,
    private: false
  )
  4.times do
    web.pages.create(pages.first)
    pages.rotate!
  end
end