#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twitter_hashtag_blaster_hashtag'
wp option delete 'twitter_hashtag_blaster_button_size'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitter_hashtag_blaster_bitly'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitter_hashtag_blaster_bitly'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitter_hashtag_blaster_bitly'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitter_hashtag_blaster_bitly'"
