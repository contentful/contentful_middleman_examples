require "inifile"

activate :contentful do |f|
  config = IniFile.load(File.join(ENV['HOME'], ".contentfulrc"))
  f.access_token = config["my_catalogue"]["CONTENTFUL_DELIVERY_ACCESS_TOKEN"]
  f.space = {catalogue: config["my_catalogue"]["SPACE_ID"]}
  f.content_types = {product: "product", brand: "brand", category: "category"}
end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

configure :build do
end
