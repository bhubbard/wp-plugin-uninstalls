#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_twitter_consumerKey'
wp option delete 'auto_twitter_consumerSecret'
wp option delete 'auto_twitter_accesToken'
wp option delete 'auto_twitter_accesTokenSecret'
wp option delete 'auto_twitter_bitly_username'
wp option delete 'auto_twitter_bitly_api_key'

