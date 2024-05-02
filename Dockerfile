# Use the official Ruby 3.3.0 image as a base
FROM ruby:3.3.0

# Set the working directory within the container
WORKDIR /usr/src/app

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install any necessary dependencies specified in Gemfile
RUN bundle install

# Copy the rest of your application code into the container
COPY . .

# Expose the port your app runs on
EXPOSE 4567

# Define the command to start your app. Assuming you are using 'rackup' to start your app.
CMD ["rackup", "--host", "0.0.0.0", "-p", "4567"]
