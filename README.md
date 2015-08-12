# FizzBuzz


 
## What is in the box?

```
.
├── Gemfile
├── Gemfile.lock
├── Guardfile
├── README.md
├── Rakefile
├── lib
│   ├── fizzbuzz
│   │   └── generator.rb
│   ├── fizzbuzz.rb
│   └── main.rb
└── test
    ├── fizzbuzz
    │   └── test_generator.rb
    └── test_helper.rb
```

#### Gemfile & Gemfile.lock
This is used by 'bundler' in order to manage the gems and the dependencies. 

See: http://bundler.io/

These are the main commands:
* bundle install
* bundle update
* bundle exec ...

This installs or updates the gems. This will also generate a Gemfile.lock. This contains the exact gem versions that were used on the last update. 

Note: You can have multiple versions of the same gem installed on one machine. 

When running a file use ```bundle exec program.rb``` instead of ```ruby program.rb```.

This will ensure that the correct versions of the gems are used at runtime - these are the gems versions specified in the Gemfile.lock file. If you don't use ```bundle exec``` the system could choose an incorrect version of a gem at runtime.

#### Guardfile
This is a configuration file used by the guard gem. Specifically this file is for guard-minitest, which as another gem that makes it easier to use guard with minitest.

See: https://github.com/guard/guard

See: https://github.com/guard/guard-minitest

The command to run guard is ```gaurd```. It is a good idea to use this with Bundler e.g. ```bundle exec guard```.

This will then start guard. Guard will follow the instructions in the Guardfile. In this case it will run the tests when ever a Ruby file is changed and saved. This could be a production file or a test file. It has been configured to try and run the relevant tests e.g. if you change View.rb then the  TestView.rb tests will be run.

To run all the tests, click in the terminal and press ```enter```.


#### Rakefile
This is used by a gem named..... rake

See: https://github.com/ruby/rake

Examples: http://docs.seattlerb.org/rake/doc/rakefile_rdoc.html

In a Rakefile, you can specify various tasks e.g.
```
task 'greet' do |t|
  puts "hello from rake"
end
```

If we had this example task, we could run it with ```rake greet``` or better yet use ```bundle exec rake greet```.

In this specific Rakefile there is a task that can run the tests. It is a special kind of task, a test task, and it has the ability to run all the tests. To try it out use ```bundle exec rake test```. That task has been setup as the default so you can also use ```bundle exec rake```.


#### and the rest?

See the comments within each file.

## What is in the Gemfile?

```ruby
  gem 'guard'
  gem 'guard-minitest'
  gem 'minitest-reporters'
  gem 'rake'
```


#### minitest-reporters

This gem improves the output the minitest produces when it runs. There are a few options to choose from, see the docs and use what you prefer. Look in test_helper.rb to see how it is currently configured.

See: https://github.com/kern/minitest-reporters


## The challenge

#### Problem Description

Imagine the scene. You are eleven years old, and in the five minutes before the end of the lesson, your Maths teacher decides he should make his class more "fun" by introducing a "game". He explains that he is going to point at each pupil in turn and ask them to say the next number in sequence, starting from one. The "fun" part is that if the number is divisible by three, you instead say "Fizz" and if it is divisible by five you say "Buzz". So now your maths teacher is pointing at all of your classmates in turn, and they happily shout "one!", "two!", "Fizz!", "four!", "Buzz!"... until he very deliberately points at you, fixing you with a steely gaze... time stands still, your mouth dries up, your palms become sweatier and sweatier until you finally manage to croak "Fizz!". Doom is avoided, and the pointing finger moves on.

So of course in order to avoid embarassment infront of your whole class, you have to get the full list printed out so you know what to say. Your class has about 33 pupils and he might go round three times before the bell rings for breaktime. Next maths lesson is on Thursday. Get coding!

Write a program that prints the numbers from 1 to 100. But for multiples of three print "Fizz" instead of the number and for the multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz?".

Sample output:
```
1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz
11
Fizz
13
14
FizzBuzz
16
17
Fizz
19
Buzz
... etc up to 100
```

#### Stage 2 - new requirements

 * A number is fizz if it is divisible by 3 or if it has a 3 in it
 * A number is buzz if it is divisible by 5 or if it has a 5 in it


Ref: http://www.codingdojo.org/cgi-bin/index.pl?KataFizzBuzz

###### Please ask if you get stuck.

###### Good luck!!!



