activate :contentful do |f|
  f.access_token = "2e233e64dde3b688cc772a3eb080e7566570d277cbd4391a7fbec9e3217a6a9a"
  f.space = {links: "u4lyfh69psb2"}
  f.content_types = {link: "4D5cDE5S8Ee8E8AKS6uswe"}
  f.cda_query = {content_type: "4D5cDE5S8Ee8E8AKS6uswe"}
end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

configure :build do
end
