# HelloApp

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix


## Elixir Startup steps:

1) `mix phxnew project_name --database postgres`
2) `cd project_name`
3) `mix deps.get` downloads the dependencies  
4) `mix ecto.create` creates database with local postgres set up. 

5)
```
  dev.exs

  username: "postgres", # default val 
  password: "your_password",
  database: "default",
  hostname: "localhost",
  port: 5433, #default val is 5423 change if set up on different port 
  ```

## Front end set up 

1) `cd assets`
2) `npm install ` - running in to issues here https://stackoverflow.com/questions/45801457/node-js-python-not-found-exception-due-to-node-sass-and-node-gyp

- fixing the error that pops up with this:
  ok this might not work but hopefully it does:
  ```
  export PYTHON=python2 (after installing python2 from installer)
  npm uninstall node-sass
  npm install sass # node sass has been depricated

  # unclear if needed but 
  rm -rf node_modules (if it exists)
  npm cache clean --force (follow instructions to allow operation)
  npm install 

  ```

3) `cd ..`
4) `mix phx.server` start server on localhost:4000

to run `iex` locally use `iex -S mix`


# DB SET UP 



```
psql -p port -U postgres

# CREATE USER user_name WITH PASSWORD 'my_password'; 
# ALTER USER user_name CREATEDB;
# exit

mix ecto.create
```

### changes to existing tutorial in 2024: 
https://www.softcover.io/read/aa18bc18/phoenix_tutorial_book/ch1_from_zero_to_deploy#code-mix_exs_versions

updated outdated deps, losen constraints 

#### TODO: add dependabot
#### DEPLOYMENT: https://www.softcover.io/read/aa18bc18/phoenix_tutorial_book/ch1_from_zero_to_deploy#code-mix_exs_versions 


