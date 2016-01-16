---
title: Null as a type vs null as a value
---

I don't think it's a controversial statement to say that null pointers are one of the biggest
sources of bugs in the languages that contain them, but what can we do about them?
{: .lead }

{% attribute "Hoare, Tony (25 August 2009)" "http://www.infoq.com/presentations/Null-References-The-Billion-Dollar-Mistake-Tony-Hoare" %}
I call it my billion-dollar mistake. It was the invention of the null reference in 1965 ... My
goal was to ensure that all use of references should be absolutely safe, with checking performed
automatically by the compiler. But I couldn't resist the temptation to put in a null reference,
simply because it was so easy to implement. This has led to innumerable errors, vulnerabilities, and
system crashes, which have probably caused a billion dollars of pain and damage in the last forty
years.
{% endattribute %}

Most uses of null that I've seen essentially boil down to "this pointer isn't pointing to anything
at the moment". That can include "this pointer hasn't had anything assigned to it yet", "an error
occurred in the function you got this pointer from", and other similar situations. All languages
have their own way of dealing with these situations; some languages reject the notion of nullability
entirely and just throw an exception[^1], others try to encode the possibility of failure in the
type signature, and some just give you a default value. We're gonna assume that nullability is here
stay and just look at the second and third cases.

## Null as a type

When I say "null as a type" I don't necessarily mean that null has to be a type in of itself, simply
that the type system recognises the possibility of null and _ensures it is handled correctly_.

[Ceylon](http://modules.ceylon-lang.org/repo/1/ceylon/language/1.2.0/module-doc/api/Null.type.html)



{% gist 1b1d38b1ec82b4ec93d0 %}

Or [play with it yourself](https://play.rust-lang.org/?gist=1b1d38b1ec82b4ec93d0&version=stable)!


[^1]: Often in these languages there will be some way to return a null-like value, such as `None`
      in Python, but usually this would be considered unidiomatic or even just plain wrong.
