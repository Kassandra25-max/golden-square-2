# Reading_time Method Design Recipe

## 1. Describe the Problem

>As a user
>So that I can manage my time
>I want to see an estimate of reading time for a text, assuming that I can read 200 >words a minute.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# `reading_time` takes a string and returns the time it takes to read it

length_of_time = reading_time(text)

text: a string(e.g "How are you doing today")
length_of_time: a interpolated string (e.g "Reading time = #{minutes}min #{seconds}s")

# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

reading_time("This is random text ...") => "Reading time = 2 min 0s"
reading_time("hello WORLD ...") => "Reading time = 1 min 34s"
reading_time("") => "Reading time = 0min 0s"
reading_time(nil) throws an error
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

