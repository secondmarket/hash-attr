#hash_attr

Declare attributes as hash-attr to simply generate an Hash of their names and values.

##Installation

Add this line to your application's Gemfile:

    gem 'hash_attr'
And then execute:

    $ bundle
Or install it yourself as:

    $ gem install hash_attr

##Usage

    class Example
      include HashAttr
      hash_attr :marco, :tagada
      attr_accessor :hello
    end

    example = Example.new

    example.marco = 'polo'
    example.tagada = 'tsoin'
    example.hello= 'world'

    example.marco
    => "polo"

    example.tagada
    => "tsoin"

    example.hello
    => "world"

    example.attributes
    =>{:marco=>"polo", :tagada=>"tsoin"}


