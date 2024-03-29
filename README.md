# Paper Kit Rails Version

Thanks for trying out Paper Kit (Rails Version)! We promise your rails app will look awesome after install it. You can view live preview [here](http://uiready.io/items/paper-kit-rails-version/demo).

[![Paper Kit](https://raw.githubusercontent.com/UiReady/uiready.github.io/master/images/paper_kit_rails_blog_cover.jpg)](https://uiready.io/items/paper-kit-rails-version)

## Table of Content

* [Install Preparation](#install-preparation)
* [Installation](#installation)
* [Theme Structure In Rails](#theme-structure-in-rails)
* [Page Generators](#page-generators)
* [Changelog](#changelog)
* [Copyright](#copyright)

## Install Preparation

Recommend install on blank new rails app

Although Paper Kit (Rails Version) can be installed on your existing rails app, we still recommend you to install it on a blank new rails app first and get familiar how this gem integrate your rails app.

Remove any bootstrap from existing rails app

If you want to integrate existing rails app, please make sure you have remove all the Bootstrap gems such as [twitter-bootstrap-rails](https://github.com/seyhunak/twitter-bootstrap-rails), [bootstrap-rails](https://github.com/anjlab/bootstrap-rails), [bootstrap-sass](https://github.com/twbs/bootstrap-sass), [less-rails-bootstrap](https://github.com/metaskills/less-rails-bootstrap) or any Bootstrap related stylesheets and javascript from your rails app. As Paper Kit (Rails Version) already contain its own version of Bootstrap.

[Back to top](#table-of-content)

## Installation

1. Create a new rails application from terminal

  ```
  rails new exampleapp
  cd exampleapp
  ```

2. Install paper_kit gem

  ```
  gem 'paper_kit', '~> 1.2', '>= 1.2.1'
  ```

  Run the following command to install the gem:

  ```
  bundle install
  ```

  Congratulation, Paper Kit for Rails Version has been installed in your local machine.

3. Run the install generator to integrate Paper Kit in your rails

  ```
  rails g paper_kit:install
  ```

  The install generator will created the following layout, css and js files in your app:

  * app/views/layouts/_base.html.erb
  * app/assets/stylesheets/paper_kit.css
  * app/assets/javascripts/paper_kit.js

  Also, it added require directive to require paper_kit.css and paper_kit.js from following manifest files:

  * app/assets/stylesheets/application.css
  * app/assets/javascripts/application.js

[Back to top](#table-of-content)

## Theme Structure In Rails

Paper Kit (Rails version) has integrate lot of the rails best practices such as

* integrate nicely with turbolinks enabled
* dynamic load the javascript init scripts
* proper asset pipeline integration

Before we dive in to using Page Generators. Let get familiar how this gem integrate to rails app

First thing first, in order to simplify the file management from your rails app, all the Paper Kit files are actually located in the gem except the following files for customize purpose:

Paper Kit files in your rails app folder:

* app/views/layouts/_base.html.erb
* app/assets/stylesheets/paper_kit.css
* app/assets/javascripts/paper_kit.js

### _BASE.HTML.ERB

It contain html head and empty body. All other layouts are based on this _base.html.erb layout so that same html head setting can be reuse among different layouts.

There are three yield contents specified in base layout:

```ruby
<%= yield :head %>
<%= yield :features %>
<%= yield :class %>
```

#### <%= yield :head %>

you can specify the custom meta, css style and javascript from the view file to fill in this area. For example, if you want to include some style on index view page only. From your index.html.erb, you can specify:

```ruby
<% content_for :style do %>
<style>
  .somestyle {
  background-color: red;
  }
</style>
<% end %>
```

#### <%= yield :features %>

you can specify the javascript init features you want to invoke from the view file to fill in this area. For example, if you want to add feature1 and feature2 on index view page only. From your index.html.erb, you can specify:

```ruby
<% content_for :features, "feature1 feature2" %>
```

Then add the following init script in paper_kit.js OR add it to separate js file and require it from paper_kit.js

```ruby
$(document).on("page:change", function() {
  if ($.inArray('feature1',App.features()) >= 0) {
    Write your feature1 init script here ...
  }
  if ($.inArray('feature2',App.features()) >= 0) {
    Write your feature2 init script here ...
  }
});
```

#### <%= yield :class %>

you can specify the css class name from the view file to fill in this area. For example, if you want to give the class name on index view page only. From your index.html.erb, you can specify:

```ruby
<% content_for :class, "home" %>
```

### PAPER_KIT.CSS

It is the manifest file using sprockets require directives to require all Paper Kit stylesheet files.


### PAPER_KIT.JS

It is the manifest file using sprockets require directives to require all Paper Kit javascript files.

[Back to top](#table-of-content)

## Page Generators

Paper Kit come with the following page generators to help you create the various pages. It's automatically handle all setup such as routes, controllers and views. By the way, all view layout are based on `_base.html.erb` layout, if you want to use different layout, you can specify it in your controller.


### INDEX PAGE GENERATOR

Generate index page view at app/views/CONTROLLER/ACTION

```
rails g paper_kit:index_page CONTROLLER ACTION
```

### LANDING PAGE GENERATOR

Generate landing page view at app/views/CONTROLLER/ACTION

```
rails g paper_kit:landing_page CONTROLLER ACTION
```

### PROFILE PAGE GENERATOR

Generate profile page view at app/views/CONTROLLER/ACTION

```
rails g paper_kit:profile_page CONTROLLER ACTION
```

### REGISTER PAGE GENERATOR

Generate register page view at app/views/CONTROLLER/ACTION

```
rails g paper_kit:register_page CONTROLLER ACTION
```

### TUTORIAL PAGE GENERATOR

Generate tutorial page view at app/views/CONTROLLER/ACTION

```
rails g paper_kit:tutorial_page CONTROLLER ACTION
```

### COMPONENTS PAGE GENERATOR

Generate components page view at app/views/CONTROLLER/ACTION

```
rails g paper_kit:components_page CONTROLLER ACTION
```

### TEMPLATE PAGE GENERATOR

Generate template page view at app/views/CONTROLLER/ACTION

```
rails g paper_kit:template_page CONTROLLER ACTION
```

[Back to top](#table-of-content)

## Changelog

2016.03.17 - version 1.2.1.0

* First release for rails version

[Back to top](#table-of-content)

## Copyright

Design is copyright of [Creative Tim](http://creative-tim.com). Paper Kit Pro will available for purchase soon. You can get it from [UiReady](https://uiready.io).

[Back to top](#table-of-content)
