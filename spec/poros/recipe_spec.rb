
require 'rails_helper'

RSpec.describe Recipe do
  describe 'instantiation' do
    let(:data) do
      {recipe:
        {
          uri: 'http://www.edamam.com/ontologies/edamam.owl#recipe_19a416f76255b3cd2f577a85c91b3cff',
          label: 'Avocado from Mexico, Orange and Watercress Salad. Adapted from Chef Richard Sandoval',
          image: 'https://edamam-product-images.s3.amazonaws.com/web-img/7a0/7a0ce2ee688b9534b92257c4c1f13b95.JPG?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEIT%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJHMEUCIGL%2FSbNt215p0tI6bdzfYBxKp4gJSgWuda0BzzffhafnAiEAtwt9ioo%2BA5uLS0dyM7VDaWgb7yIj2Dl3qCQcWLSu1ZQqzAQIfRAAGgwxODcwMTcxNTA5ODYiDGngp3iTu5vpirlLUCqpBIvn9%2BMhD%2BWXkvQllh%2Bh6xCgbys%2BJzngKOhkVxTQ%2B0WITnqnXq4JabPV%2B7HYb%2FNDwljNsgP2zsOZNAzFYOswntf%2B1XmyzTSKZO8cGYf6XgFosuBbG%2FHVBxUpGseMWjJNQk9LLQ6pHZPlP3dyDImvWhMmK%2FSAieRte%2BCP%2BA9M1UKPLt7uTF%2FCyGXOaQwOb36D45by%2FlhG%2FFjLeDuwY2Iqg2s43D40ex0z5l5l%2BDBO7to7i46sLLAeECNB%2FlE7Rm9sA43pruatLB0tiqg3jy%2FLZAltlG8pfDnf7o4eWag%2BnVuF1qU9b6IW4D26YaPcdM9bOCdyfQqhEQAQrg%2BCJn9sMqpGR0Iyng%2FI5pdKz0WtPNZJkSGUjxLoJVGCLxxbB5snrSUxBHzocfIwogk7QXKcMmcAsfifX16%2B6dVRN%2BxOaCDbpQCpGHIjQT8GHerFWgkCyRGg%2FkWwH8ptMc5v4N8vLZBicHTt202U5SJxt8UIFhUnm%2FMX%2BMBwIsRhB3S%2Foz6yFm5tivbZLeGirTaF1ZT1r71wsWIF9P469m4CQsaGxiAGeDSpdA7vFuST0%2BOOBjlh2n9nS3whA%2FPr2AxPlt3ynYGNp551rQLDEU%2B2LdKQvuNjNIQ1%2BGcSLYk5bsNbZL3dXA9XL4ZfsGkUV9z3nHw1L%2FZ5fxXqMPpxsTixHsSaoqb3hq6ir0EHlW5194oRZIw8dTKR33%2BSNujOXxQbg6g4cdJNaGmbcP7IM%2Fwwzay1mwY6qQEoxZn%2BY9RoSlpv9NPbDD1QO9aQ6kBVSclGJq7wOsj%2F%2BwmMIzzVmMTs%2FiwQUBv2YvWywwiRSkHv6VYwoEgTLFSI%2B04OLQDde%2Fe2lmFYWvEP0EskQy9xBT2pxQQxaTBQOUBrGaSilDAiD2SjplZlan2s85mDOaLZRGG%2BRK2i2ndIre8Uljl91WKYqDJ1KKuVAEQE7RJopAAsjvyagS5XEpdmPEa3g2cvDYdd&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20221110T203102Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFLQXAUX6U%2F20221110%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=194d47ffaf446533e6f4b5786341dc1ca2b3448a67f0d57bf89975a3f8d7616f'
        }
      }
    end

    it 'instantiates described class' do
      country = 'argentina'
      recipe = Recipe.new(data, country)
      expect(recipe).to be_instance_of(described_class)
      expect(recipe.title).to eq(data[:recipe][:label])
      expect(recipe.country).to eq('argentina')
      expect(recipe.url).to eq(data[:recipe][:uri])
    end
  end
end
