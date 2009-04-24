# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_equitytycoon_session',
  :secret      => '9cb763579129af58ef34ada7adcbbb89463e3b53355fa607efb7f4b3b431f35b63206c4ee406b2e89771751f4f718bed8b8895fb086d6213ac740969cea09238'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
