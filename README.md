Spree Sidr
===================

A Spree extension that adds a [sidr](http://www.berriart.com/sidr/) powered side menu to your spree application when viewed on a mobile device.


Installation	
=======

**NOTE: The master branch of this repo is the latest version of this extension and may not work with your installation of Spree. Please use the branch specific to your version of spree. Spree 2.0, for example, would use the `2-0-stable` branch of this repo.**

If you're using Spree 2.0, you will need to add the gem to your Gemfile using this line:

```ruby
gem "spree_sidr", :github => "LBRapid/spree_sidr", :branch => '2-0-stable'
```

If you are using Spree's master branch, then use this line:

```ruby
gem "spree_sidr", :github => "LBRapid/spree_sidr"
```

Then install the gem via Bundler:

```
bundle install
```

Finally, run spree_sidr's installer:

```
bundle exec rails g spree_sidr:install
```

in order to copy over the required css and js files.

Once installation is complete, view your store on a mobile device and look for the "burger" icon on the top left of the page to toggle the side menu.

Theme
=========

**TODO**: Describe styles to override to customize the default theme

Copyright (c) 2013 John Dyer, released under the New BSD License
