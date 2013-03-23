System Requirements
===================

Ruby
----

Current development version of Ruby is __2.0.0-p0__ or any minor version above.

Please make sure your Ruby version manager files are in global git ignores and
do not commit them to the repository.

Please use modern Ruby syntax that was introduced in 1.9+

Rails
-----

Current development version of Rails is __3.2.13__, however try to avoid any Rails
3 specific stuff so we'll have easier transition to __Rails 4__ once it come out.

Gemfile
-------

Always lock specific gems in production environment.

```ruby
gem 'rails', '3.2.13'
```

Development and tests environments should have minimum requirements only.

```ruby
gem 'rspec-rails', '~> 2.13.0'
```
