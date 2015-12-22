require "inifile"

activate :contentful do |f|
  config = IniFile.load(File.join(ENV['HOME'], ".contentfulrc"))
  f.access_token = config["my_catalogue"]["CONTENTFUL_DELIVERY_ACCESS_TOKEN"]
  f.space = {catalogue: config["my_catalogue"]["SPACE_ID"]}
  f.content_types = {product: "product", brand: "brand", category: "category"}
end

activate :contentful do |f|
  f.access_token = "25f513e34e33916336bba1d740d135035d4e1d63b87fc446da374fec3aaccaca"
  f.space = {links: "3fwy09k2gc9g"}
  f.content_types = {link: "link"}
  f.cda_query = {content_type: "link"}
end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

configure :build do
end
