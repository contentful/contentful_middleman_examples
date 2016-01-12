# Single Content Type Example

## How to Run

Paste the following command inside your terminal:

```bash
echo "Checkout Repository"         && git clone git@github.com:contentful/contentful_middleman_examples.git && \
echo "Go to This Example's Folder" && cd contentful_middleman_examples/examples/single_content_type && \
echo "Install Dependencies"        && bundle install && \
echo "Fetch Contentful Data"       && bundle exec middleman contentful && \
echo "Start Middleman Server"      && bundle exec middleman server
```

Then open your browser and go to: [localhost:4567](http://localhost:4567)

## Configuration

```ruby
activate :contentful do |f|
  f.access_token = "2e233e64dde3b688cc772a3eb080e7566570d277cbd4391a7fbec9e3217a6a9a"
  f.space = {links: "u4lyfh69psb2"}
  f.content_types = {link: "4D5cDE5S8Ee8E8AKS6uswe"}
  f.cda_query = {content_type: "4D5cDE5S8Ee8E8AKS6uswe"}
end
```

In [config.rb](./config.rb) you will find the above cited configuration block. Let's go through it line by line:

* `activate :contentful do |f|` - Enables Contentful Middleman extension and gives us a configuration object `f`
* `f.access_token = "YOUR_SPACE_TOKEN"` - Sets up the API token for your space, in this case, with the "Useful Links" space token
* `f.space = SPACE_HASH` - Sets up the Space itself, in this  case, with the "Useful Links" Space ID and `links` as the name we'll use inside Middleman
* `f.content_types = CONTENT_TYPE_HASH` - Sets up the Content Types we'll use for the generator, in this case, the "Useful Link" Content Type ID and `link` as an alias
* `f.cda_query = CDA_QUERY_PARAMETERS` - Sets up the Contentful Client API request, in this case, we just want "Useful Link" entries

## Views

```erb
<ul>
  <% data.links.link.each do |id, link| %>
    <li>
      <a href="<%= link["url"] %>"><%= link["websiteName"] %></a>
    </li>
  <% end %>
</ul>
```

In [source/index.html.erb](./source/index.html.erb) you will find the above cited template code. Let's analyze the important bits:

* `data` - Will contain a method for each Space you have defined, in this case `data.links`
* Each Space will contain a method for each defined Content Type `data.links.link`
* Each Content Type will be a collection of entries fetched for it, each entry will have an ID and the Data - `data.links.link.each do |id, link|`
* Once you have the `link` object, it's a `HashWithIndifferentAccess`, you can get all the properties in your Content Type by their name
