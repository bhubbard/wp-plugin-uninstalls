#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bilbok_cf7bm_options'
wp option delete 'bilbok_cf7bm_rate_limited'
wp option delete 'bilbok_cf7bm_daily_usage'

# Clear Cron Jobs
wp cron event delete 'bilbok_cf7bm_cron_send'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_contact_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_contact_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_contact_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_contact_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_from_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_from_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_from_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_from_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_posted_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_posted_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_posted_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_posted_data'"
