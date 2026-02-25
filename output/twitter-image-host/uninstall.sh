#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twitter_image_host_link_thumbnails'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'twitter_image_host_oauth_%'"
wp option delete 'twitter_image_host_oauth_consumer_key'
wp option delete 'twitter_image_host_oauth_consumer_secret'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'twitter_image_host_oauth_token_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'twitter_image_host_oauth_token_secret_%'"
wp option delete 'twitter_image_host_author_twitter_account_map'
wp option delete 'twitter_image_host_access_key'
wp option delete 'twitter_image_host_max_width'
wp option delete 'twitter_image_host_max_height'
wp option delete 'twitter_image_host_override_url_prefix'
wp option delete 'twitter_image_host_widget'

