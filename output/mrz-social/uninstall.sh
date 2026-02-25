#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mrz_social_links'
wp option delete 'mrz_social_counters'
wp option delete 'mrz_social_twitter_token'

# Delete Transients
wp transient delete 'mrz_social_facebook_count'
wp transient delete 'mrz_social_facebook_page_id'
wp transient delete 'mrz_social_gplus_count'
wp transient delete 'mrz_social_gplus_page_url'
wp transient delete 'mrz_social_twitter_count'
wp transient delete 'mrz_social_twitter_screen_name'

