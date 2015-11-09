# Multiple Spaces Example

## How to Run

Paste the following command inside your terminal:

```bash
echo "Checkout Repository"         && git clone git@github.com:contentful-labs/contentful_middleman_examples.git && \
echo "Go to This Example's Folder" && cd contentful_middleman_examples/examples/multiple_spaces && \
echo "Install Dependencies"        && bundle install && \
echo "Create Catalogue Space"      && contentful_bootstrap create_space my_catalogue --json-template bootstrap_templates/catalogue.json && \
echo "Fetch Contentful Data"       && middleman contentful && \
echo "Start Middleman Server"      && middleman server
```

Then open your browser and go to: [localhost:4567](http://localhost:4567)

## Configuration

For reference of basic configuration, you can look into [single_content_type example](../single_content_type/README.md)

In this example we'll be using [Contentful Bootstrap](https://github.com/contentful-labs/contentful-bootstrap.rb) for setting up our own Space with multiple Content Types, and fetching
the configuration from `~/.contentfulrc`

The template used is located [here](./bootstrap_templates/catalogue.json)

In this example we have two `contentful` extension activations.
