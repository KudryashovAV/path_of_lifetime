# Castle clash

## Getting Started

After you have cloned this repo, run this setup script to set up your machine
with the necessary dependencies to run and test this app:

    % bin/setup

It assumes you have a machine equipped with Ruby, Postgres, etc.

After setting up, you can run the application using foreman or via regular:

    % bin/rails s

## Running JavaScript specs from the command line

If you were to run:

    % RAILS_ENV=test bundle exec rake spec:javascript

You'd hopefully see something like:

    Running Jasmine specs...

    PASS: 0 tests, 0 failures, 0.001 secs.

You can filter execution by passing the `SPEC` option as well:

    % RAILS_ENV=test bundle exec rake spec:javascript SPEC=my_test

If you experience an error at this point, the most likely cause is JavaScript being loaded out of order, or otherwise conflicting with other existing JavaScript in your project. See "Debugging" below.

## Running from your browser

Startup your Rails server (ex: `bundle exec rails s`), and navigate to the path you have configured in your routes.rb file (ex: [http://localhost:3000/specs](http://localhost:3000/specs)).
The Jasmine spec runner should appear and start running your testsuite instantly.

For more information about running JavaScript specs visit [https://github.com/searls/jasmine-rails](https://github.com/searls/jasmine-rails)
