# ClickUp API Ruby Library
 ClickUp API solution for Ruby. As of `v0.1.1`, it doesn't support OAuth Authentication. You can only use personal token based authentication.

# Getting Started

```ruby
gem install 'click_up'
```
Or add the following line to your Gemfile.

```ruby
gem 'click_up'
```
Next, you need to run the generator:

```ruby
rails generate click_up:install
```
It generates a `click_up.rb` initializer file at `config/initializers/`.

Add your ClickUp personal token to this initializer file:

```ruby
ClickUp.api_token = 'pk_1e2....................'
```

# Usage

## Team
```ruby
ClickUp::Team.all
```

## Space
```ruby
ClickUp::Space.all(team_id: 3451451)

ClickUp::Space.create(team_id: 3451451, name: 'Space From API')

ClickUp::Space.get(323455)

ClickUp::Space.delete(323455)
```

## Folder
```ruby
ClickUp::Folder.create(space_id: 323455, name: 'Folder From API')

ClickUp::Folder.get(756376)

ClickUp::Folder.delete(756376)
```

## List
```ruby
ClickUp::List.create(space_id: 323455, name: 'Folderless list')

ClickUp::List.create(folder_id: 756376, name: 'Foldered list')
```

## Task

```ruby
ClickUp::Task.all(list_id: 4766363)

ClickUp::Task.create(list_id: 4766363, name: 'Task from API')
```

# Additional Information
Pull requests and comments are welcome.

## License
MIT License