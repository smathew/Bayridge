# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Bayridge_session',
  :secret      => 'efef1f796ef6de9d9b66da1ff02c73dfe41f43ccbcf074fb92608a11601eff70de4a867c70f771a83ed275a7d492931b02e51203306b5818bffbfae91233ba8e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
