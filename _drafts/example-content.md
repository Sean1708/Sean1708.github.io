---
title: Example content
subtitle: things for stuff
maths: true
---

Kiko defines a `lead` class for introductory paragraphs which Kramdown allows you to set by putting
`{: .lead }` under the paragraph.
{: .lead }

Then you move onto normal paragraphs.

One nice thing about Kramdown is that hard line breaks\\
can be done using a double backslash, not that I use hard line breaks much...

## Header 2

You want to avoid `<h1>` since that's put there automatically in the title. Also very nice about
Kramdown is that header IDs are automatically created which you can [link to](#header-2 "some hover").

### H3 {#myid}

Even better you can set your own [id](#myid).

#### H4

##### H5

###### H6

> Block quotes are normal.
>
> > Nested block quotes are
> > also possible.
>
> ## Headers work too
>
> This is the outer quote again.

{% attribute "Sean Marshallsay" "https://sean1708.github.io" %}
I've made a plugin which allows easy quoting of peeps.
{% endattribute %}

Code will be done with jekyll highlighting.

{% highlight rust linenos %}

fn main() {
    let a: Option<i32> = Some(23);
}

{% endhighlight %}

But you can still use four spaces.

    Some code mutherfucker!

Or fenced blocks (but they must use `~`, inline is still done with `` ` `` and can be done with as many
as you want `````like this`````) but they won't highlight.

~~~ julia
println("herro!")
~~~

Many types of horizontal line.

***

---

__________

 * *   *

1. Numbered lists
2. work like
3. normal

- As
    - do
    - unordered
- and 
    1. nested
    2. lists

Unfortunately Kiko doesn't really support nested lists.

-   Also lists with code blocks

        some code

    and block quotes

    > hello!

    and headers

    ##### title

    and things
-   all in one list element

Definition
: definitions do not require html

rdiscount
: which is much better than rdiscount

| Name | Rank | Score |
|:----:|:----:|:-----:|
| Cookie | #69 | 169 |
| Buther | #70 | 169 |
| Stuart | #71 | 168 |

![Large example image](http://placehold.it/800x400 "Large example image")
![Medium example image](http://placehold.it/400x200 "Medium example image")
![Small example image](http://placehold.it/200x200 "Small example image")

Kramdown {::comment}does comments which are either inline or block, which{:/comment} is quite cool.

It can also {::nomarkdown}briefly _disable **all** markdown_ `generation`{:/nomarkdown} which I
probs won't use.

Footnotes are very easy[^1].

{% gist Sean1708/92d9fddb88c7d9a513ea %}

Let's not forget the uber important maths blocks (for which we need `maths: true` in the preamble)
and $$\frac{1}{2}$$ of inline maths.

$$
\chi_C = \frac{1}{i \omega C}
$$

Oh and "fancy" 'quotes'.

[^1]: citation needed
