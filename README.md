# AlgorithmiaAgent

Huginn agent to interact with the [Algorithmia API](https://algorithmia.com).

## Installation

Add this string to your Huginn's .env `ADDITIONAL_GEMS` configuration:

```ruby
huginn_algorithmia_agent
# when only using this agent gem it should look like hits:
ADDITIONAL_GEMS=huginn_algorithmia_agent
# if you want to use the latest, non-released code (master) add this instead:
ADDITIONAL_GEMS=huginn_algorithmia_agent(github: joenas/huginn_algorithmia_agent)
```

And then execute:

    $ bundle

## Usage

The AlgorithmiaAgent allows you to perform requests to Algorithmia. You need to create an account and receive an `api_key`.


## Development

Running `rake` will clone and set up Huginn in `spec/huginn` to run the specs of the Gem in Huginn as if they would be build-in Agents. The desired Huginn repository and branch can be modified in the `Rakefile`:

```ruby
HuginnAgent.load_tasks(branch: '<your branch>', remote: 'https://github.com/<github user>/huginn.git')
```

Make sure to delete the `spec/huginn` directory and re-run `rake` after changing the `remote` to update the Huginn source code.

After the setup is done `rake spec` will only run the tests, without cloning the Huginn source again.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/joenas/huginn_algorithmia_agent/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
