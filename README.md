# Makehub, like github for makers.

Feel free to contribute to the project :)

## Installation
from your shell

    git clone git://github.com/hackidemia/makehub.git
    cd makehub
    bundle
    bundle exec rails s


## Usage
From your development environment

    bundle exec rails s

If you're running in production you need to set the environment variables "GOOGLE_KEY" and "GOOGLE_SECRET", for the Google OAuth login.

## Upload of images to AWS S3
Don't forget to set the parameters in config/application.yml

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
