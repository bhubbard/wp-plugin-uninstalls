#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_twitter_access_token'"
wp option delete 'twitterwall_bgcolor'
wp option delete 'twitterwall_avatar_bdcolor'
wp option delete 'twitterwall_consumer_key'
wp option delete 'twitterwall_consumer_secret'
wp option delete 'twitterwall_count'
wp option delete 'twitterwall_query'
wp option delete 'twitterwall_lang'
wp option delete 'twitterwall_url'
wp option delete 'twitterwall_options_updated'

