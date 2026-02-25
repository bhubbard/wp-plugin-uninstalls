#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'utf_consumer_key'
wp option delete 'utf_consumer_secret'
wp option delete 'utf_access_token'
wp option delete 'utf_access_token_secret'
wp option delete 'utf_shortcodes'
wp option delete 'utf_urls'
wp option delete 'utf_cache_option'
wp option delete 'utf_cache_in_minutes'
wp option delete 'utf_date_of_tweet'
wp option delete 'utf_replies_icon'
wp option delete 'utf_retweets_icon'
wp option delete 'utf_favorites_icon'
wp option delete 'utf_hide_videos'
wp option delete 'utf_hide_images'
wp option delete 'utf_size_images'

