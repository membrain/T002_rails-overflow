# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_T002_rails-overflow_session',
  :secret      => '59ec265e8d97b79d3d324e0bdafb07c4e0df43bb1ea477d5ebf8454a30644eb3f934b89681e7049b1cc77ded897ef4a242ba95ea57b1545c3bb7911449368dc1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
