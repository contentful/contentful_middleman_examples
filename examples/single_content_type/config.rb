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
