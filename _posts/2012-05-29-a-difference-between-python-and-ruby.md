---
layout: post
title: "A difference between Python and Ruby"
description: "Object-Orientation in Python and Ruby"
category: coding
tags: [python, ruby, object-oriented programming, OOP]
---
{% include JB/setup %}

# A difference between Python and Ruby
One way in which the Python community and Ruby community views object orientation
differently is in scope.

In Python:
    >>> name = "Alan"
    >>> def print_name():
    ...     print name
    ...
    >>> print_name()
    Alan

In Ruby, however, you must pass the variable to the name (in IRB):
    variable = "Alan"
     > def print_name name
    ?>   print name
     > end
     > print variable
     Alan => nil

Otherwise, you would get
    NameError: undefined local variable or method `name' for main:Object

The reason for this is the concept of message passing in Ruby. Side note: I do not
have any experience with SmallTalk or Objective-C, which are based on the same concept,
that one does not call a function, but send a message to it. The object on which
a method is invoked is the receiver.

The idea sounded counterintuitive to me until I read that I must understand it as
a "user" that is invoking the method. Therefore, I am sending a message to the object,
which has the method to receive it. If the receiver does not have the method defined, 
it will use :method_missing, if it exists.

Because message-passing is so central to Ruby, I now understand why my
heap sorting algorithm didn't work. It was because I failed to pass objects
to objects, so the heap sorting algorithm was trying to sort nil.

I was prompted to this understanding, and to the code I tested by a question
on [StackExchange](http://programmers.stackexchange.com/questions/138643/why-is-python-used-for-high-performance-scientific-computing-but-ruby-isnt) on why Python
is used for high-performance and scientific computing, but Ruby is not. There were
answers relating how Python (and I creatively re-interpret) was a multi-paradigmic
language. It was a procedural programming with object-oriented capability, but
Ruby was an object-oriented language that, in the word of 
[Spencer Rathbun](http://programmers.stackexchange.com/a/138655),
"_masquerades_ as a procedural language." My examples above show it.

To a researcher who first takes up programming, Python might seem more intuitive -- 
she just declared a variable and wants to call a function to deal with it after all.
In Ruby,
she would need to remember to pass the variable to the method, which
would necessitate the understanding of scope. She would need to understand 
the reason a phrase like "undefined method `<' for nil:NilClass".

Indeed, in Python, you can do "None < 3" and get "True".

To a certain degree, Ruby requires some hand-holding because people defining classes
would not understand why they need to use attr_accessor in order to access
defined variables in a class.

I think it makes Ruby beautiful because there is a certain elegance, but needless
to say, it probably is an acquired taste, a taste born from having used other 
languages, without which you probably would not understand why things
are the way they are.

Python's "one obvious way to do something" is probably to its benefits for
beginners.