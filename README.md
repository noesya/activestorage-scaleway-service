# ActiveStorage::Service::ScalewayService

[![Gem Version](https://badge.fury.io/rb/activestorage-scaleway-service.svg)](https://badge.fury.io/rb/activestorage-scaleway-service)

With v5.2, Rails introduces ActiveStorage, to facilitate uploading files to cloud services and attaching those files to ActiveRecord objects. Out of the box, it comes with implementations for cloud storage services; Amazon S3, Google Cloud Storage, and Microsoft Azure Storage; with an extendible adapter for adding support for other storage services.

Even though Scaleway Object Storage is compatible with the S3 service, this gem fixes some issues such as:
- Direct Upload for public files
- Permanent URL for public files

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add activestorage-scaleway-service

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install activestorage-scaleway-service

## Usage

Set up your service in `config/storage.yml`

```yml
scaleway:
  service: Scaleway
  access_key_id: <%= ENV['SCALEWAY_OS_ACCESS_KEY_ID'] %>
  secret_access_key: <%= ENV['SCALEWAY_OS_SECRET_ACCESS_KEY'] %>
  region: <%= ENV['SCALEWAY_OS_REGION'] %>
  bucket: <%= ENV['SCALEWAY_OS_BUCKET'] %>
  endpoint: <%= ENV['SCALEWAY_OS_ENDPOINT'] %>
  # If you want to upload as public, add this:
  # public: true
  # upload:
  #   cache_control: 'public, max-age=31536000'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/noesya/activestorage-scaleway-service. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/noesya/activestorage-scaleway-service/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ActiveStorage::Scaleway::Service project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/noesya/activestorage-scaleway-service/blob/main/CODE_OF_CONDUCT.md).
