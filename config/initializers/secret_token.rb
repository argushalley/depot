# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
	token_file = Rails.root.join('.secret')
	if File.exist?(token_file)
		# Use the existing token.
		File.read(token_file).chomp
	else
		# Generate a new token and store it in token_file
		token = SecureRandom.hex(64)
		File.write(token_file, token)
		token
	end
end
#Depot::Application.config.secret_key_base = '97614d1b9789113eeab9728550f94ee9812a38a1442298e6e35a44e3ac806635b816ad1f83db9c4ccb7cf566ffab34575fb3649c8207fae99296360a2ec1ab57'
Depot::Application.config.secret_key_base = secure_token