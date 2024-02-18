# Base image
FROM ruby:3.3.0-bullseye

# Install Bundler
RUN gem install jekyll bundler

# Set working directory
WORKDIR /app

# Copy your Jekyll project files
COPY . .

# Install Jekyll and gems
RUN bundle install

# Expose Jekyll server port
EXPOSE 4000

# Run Jekyll serve command
CMD ["bundle", "exec", "jekyll", "serve", "--livereload", "--host", "0.0.0.0"]
