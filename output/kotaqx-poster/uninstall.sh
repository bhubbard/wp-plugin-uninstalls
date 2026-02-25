#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kotaqx_poster_version'
wp option delete 'kotaqx_poster_settings'

# Delete Transients
wp transient delete 'kotaqx_poster_twitter_oauth_request_token'
wp transient delete 'kotaqx_poster_twitter_oauth_request_token_secret'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_pro_active' OR option_name LIKE '_site_transient_%_pro_active'"

# Clear Cron Jobs
wp cron event delete 'kotaqx_poster_schedule_cron'
wp cron event delete 'kotaqx_poster_do_republish_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kotaqx_poster_ever_published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kotaqx_poster_ever_published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kotaqx_poster_ever_published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kotaqx_poster_ever_published'"
