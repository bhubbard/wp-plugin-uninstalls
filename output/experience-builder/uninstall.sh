#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ml_local_cache'
wp option delete 'ml_anti_flicker'
wp option delete 'ml_content_delivery'
wp option delete 'ml_timeout'
wp option delete 'ml_postback_delay'
wp option delete 'ml_spa_page_view_option'
wp option delete 'ml_token'
wp option delete 'ml_use_quick_start'
wp option delete 'ml_quickstart_username'
wp option delete 'ml_quickstart_password'
wp option delete 'ml_account_name'
wp option delete 'ml_cid'
wp option delete 'ml_lastsetting'
wp option delete 'postback_delay'
wp option delete 'spa_pageview_option'

# Clear Cron Jobs
wp cron event delete 'ml_local_cache_refetch'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_monoloop_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_monoloop_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_monoloop_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_monoloop_condition'"
