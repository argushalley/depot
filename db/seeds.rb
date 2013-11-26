#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8
Product.delete_all
Product.create!(title: 'CoffeeScript',
  description: 
    %{<p>
        CoffeeScript is JavaScript done right. It provides all of JavaScript's
	functionality wrapped in a cleaner, more succinct syntax. In the first
	book on this exciting new language, CoffeeScript guru Trevor Burnham
	shows you how to hold onto all the power and flexibility of JavaScript
	while writing clearer, cleaner, and safer code.
      </p>},
  image_url:   'cs.jpg',    
  price: 36.00)
# . . .
Product.create!(title: 'Programming Ruby 1.9 & 2.0',
  description:
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
  image_url: 'ruby.jpg',
  price: 49.95)
# . . .
Product.create!(title: 'Rails Test Prescriptions',
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: 'rtp.jpg',
  price: 34.95)
# . . .
Product.create!(title: 'Git', 
  description:
    %{<p>
        Need to learn how to wrap your head around Git, but don’t need a lot of 
        hand holding? Grab this book if you’re new to Git, not to the world of 
        programming. Git tasks displayed on two-page spreads provide all the context 
        you need, without the extra fluff.
      </p>},
  image_url: 'git.jpg',
  price: 35.00)
# . . .
Product.create!(title: 'The RSpec Book', 
  description:
    %{<p>
        Behaviour-Driven Development (BDD) gives you the best of Test Driven Development, 
        Domain Driven Design, and Acceptance Test Driven Planning techniques, so you can 
        create better software with self-documenting, executable tests that bring users 
        and developers together with a common language. Get the most out of BDD in Ruby 
        with The RSpec Book, written by the lead developer of RSpec, David Chelimsky.
      </p>},
  image_url: 'rspec.jpg',
  price: 38.95)
# . . .
Product.create!(title: 'Node.js the Right Way', 
  description:
    %{<p>
        Get to the forefront of server-side JavaScript programming by writing compact, robust, 
        fast, networked Node applications that scale. Ready to take JavaScript beyond the 
        browser, explore dynamic languages features and embrace evented programming? Explore 
        the fun, growing repository of Node modules provided by npm. Work with multiple 
        protocols, load-balanced RESTful web services, express, ØMQ, Redis, CouchDB, and more. 
        Develop production-grade Node applications fast.
      </p>},
  image_url: 'node.jpg',
  price: 17.00)
# . . .
Product.create!(title: 'HTML5 and CSS3', 
  description:
    %{<p>
        HTML5 and CSS3 are more than just buzzwords—they’re the foundation for today’s web 
        applications. This book gets you up to speed on the HTML5 elements and CSS3 features 
        you can use right now in your current projects, with backwards compatible solutions that 
        ensure that you don’t leave users of older browsers behind. This new edition covers even 
        more new features, including CSS animations, IndexedDB, and client-side validations.
      </p>},
  image_url: 'html.jpg',
  price: 38.00)
# . . .
Product.create!(title: 'Sass', 
  description:
    %{<p>
        CSS is fundamental to the web, but it’s a basic language and lacks many features. Sass 
        is just like CSS, but with a whole lot of extra power so you can get more done, more 
        quickly. Build better web pages today with Pragmatic Guide to Sass. These concise, 
        easy-to-digest tips and techniques are the shortcuts experienced CSS developers need to 
        start developing in Sass today.
      </p>},
  image_url: 'sass.jpg',
  price: 9.95)
# . . .
Product.create!(title: 'Crafting Rails Applications', 
  description:
    %{<p>
        Rails 3 is a huge step forward. You can now easily extend the framework, change its 
        behavior, and replace whole components to bend it to your will, all without messy hacks. 
        This pioneering book is the first resource that deep dives into the new Rails 3 APIs and 
        shows you how to use them to write better web applications and make your day-to-day work 
        with Rails more productive.
      </p>},
  image_url: 'craft.jpg',
  price: 33.00)
# . . .
Product.create!(title: 'JavaScript', 
  description:
    %{<p>
        JavaScript is everywhere. It’s a key component of today’s Web—a powerful, dynamic language 
        with a rich ecosystem of professional-grade development tools, infrastructures, frameworks, 
        and toolkits. This book will get you up to speed quickly and painlessly with the 35 key 
        JavaScript tasks you need to know.
      </p>},
  image_url: 'js.jpg',
  price: 25.00)
# . . .