# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ajaxful-rating_demo_app_session',
  :secret      => '049d0484a5dba21d428ff1949f936074ea348a382c277e763260b03d60abd3ec230490af248cfcea0cc2d65604b1cbe31703906991a75d6d5be3043be6e1e574'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
