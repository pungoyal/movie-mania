# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_movie-mania_session',
  :secret      => '52173e4c2a8a34bf0ff9627437ee8afaee5eed0d126283372bd86b1f93115af10c0b1e491f6045ca5416e8480cb5a03e356f2defe9f0d5035a604facd7d52b41'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
