#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_post_to_twitter_twitter_tlitlapikey'
wp option delete 'wp_post_to_twitter_twitter_consumer_key'
wp option delete 'wp_post_to_twitter_twitter_consumer_secret'
wp option delete 'wp_post_to_twitter_twitter_access_token'
wp option delete 'wp_post_to_twitter_twitter_access_token_secret'
wp option delete 'wp_post_to_twitter_twitter_prefix'

