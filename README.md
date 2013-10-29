# ReplyParser

A Rails 4.0 email reply parser for incoming emails.

## Installation

Add this line to your application's Gemfile:

    gem 'reply_parser'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install reply_parser

## Usage

Using the Reply parser is pretty simple, just pass your email body
through the sanitize method.

```ReplyParser.sanitize(body)```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
