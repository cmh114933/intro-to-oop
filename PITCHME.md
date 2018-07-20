## Intro To OOP
+++
### What is Object Oriented Programming?
+++
A programming style that focuses on packaging code in to objects. Objects contain attributes and methods, and are only interactable through said methods.
+++
### Why do we use OOP?
+++
1. Code Reusability
2. Encapsulation
---
## Class and Instance
+++
### Classes define objects!
+++
Think of classes like blueprints/ schematics/ template for constructing buildings or machine.
+++
To create a class :
```ruby
# A Car blueprint
class Car
end
# A Character blueprint
class Character
end

```
+++
To create an object using this class (known as instantiation)
```ruby
Character.new
```
+++
Each new Car instance is an entirely different object
```ruby
char_a = Character.new
char_b = Character.new
char_a !== char_b
char_a.object_id
char_b.object_id
```
+++
Creating objects with attributes
```ruby
class Character
  def initialize(name, hair_color)
    @name = name
    @hair_color = hair_color
  end
end
Character.new("Johnny", "black")
```
---
## Interacting with your object
+++
You now have an object, but what can you do with it? Without the appropriate methods, you cannot do anything.
### i.e You need a public interface to do things with your object.
+++
### Getter Methods
```ruby
class Character
  def initialize(name, hair_color)
    @health_points = 10
    @name = name
    @hair_color = hair_color
  end

  def name
    @name
  end
end
character = Character.new("Johnny", "black")
character.name
```
+++
### Setter Methods
```ruby
class Character
  def initialize(name, hair_color)
    @health_points = 10
    @name = name
    @hair_color = hair_color
  end

  def name
    @name
  end
  
  def name=(name)
    @name = name
  end
end
character = Character.new("Johnny", "black")
character.name= "Tom"
character.name
```
+++
### Instance Methods 
```ruby
class Character
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end
character.name
```
---
## Scope
+++
### Instance Variables
```ruby
class Character
  def initialize(name)
    @name=name
  end

  def name
    @name
  end
end
```
+++
### Local Variables
```ruby
class Character
  def initialize(name)
    name=name
  end
  def name
    name
  end
end
```
+++
### Class Variables & Class Methods
```ruby
class Character
  @@total_characters = 0
  def initialize(name)
    @name = name
    @total_characters += 1
  end

  def self.total_characters
    @@total_characters
  end
end
Character.total_characters
```
---
## Self
+++
### Self depends on the context
+++

```ruby
class Character
  @@total_characters = 0
  def initialize(name)
    @name = name
    @total_characters += 1
  end

  def name
    p self
  end

  def self.total_characters
    p self
    @@total_characters
  end
end
```
---
### We've talked about public interface, how bout private?
---
## A key part on code reusability: Inheritance