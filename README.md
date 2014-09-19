# UriEncoding

[![Build Status](https://travis-ci.org/s-osa/uri_encoding.svg?branch=master)](https://travis-ci.org/s-osa/uri_encoding)
[![Coverage Status](https://coveralls.io/repos/s-osa/uri_encoding/badge.png?branch=master)](https://coveralls.io/r/s-osa/uri_encoding?branch=master)

Simple utility for URI encoding(URL encoding, percent encoding).

## Installation

Add this line to your application's Gemfile:

    gem 'uri_encoding'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install uri_encoding
    
## Usage

### Basic

```ruby
UriEncoding.encode("Aa1!?_%") #=> "Aa1!?_%25"
UriEncoding.decode("Aa1!?_%25") #=> "Aa1!?_%"
```

### Optional

`UriEncoding.encode` receives exceptions for encoding.

```ruby
UriEncoding.encode(str, []) #=> "%41%61%31%21%3F%5F%25"
UriEncoding.encode(str, UriEncoding::UnreservedCharacters) #=> "Aa1%21%3F_%25"
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/uri_encoding/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
