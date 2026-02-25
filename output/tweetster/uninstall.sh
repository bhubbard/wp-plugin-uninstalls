#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tweetster_consumer_key'
wp option delete 'tweetster_consumer_secret'
wp option delete 'tweetster_user_token'
wp option delete 'tweetster_token_secret'
wp option delete 'tweetster_bitly_login'
wp option delete 'tweetster_bitly_apikey'

