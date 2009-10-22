# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_todo_session',
  :secret      => '6b634a95a414d5ae162337ffa1dc42249c124cb7c1573d882e219e0adb998471a0034cefd6f507b8c78767ee1eefb2e7e35c939576d5809ba034a65dc882c8e6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
