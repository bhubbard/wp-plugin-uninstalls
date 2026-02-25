#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gravityformsaddon_gravityformsstripe_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%history'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%last_attempt'"

# Clear Cron Jobs
wp cron event delete 'profiler_orgtype_cron'
wp cron event delete 'profiler_users_cron'
wp cron event delete 'wc_profiler_sync_orders'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profiler_client_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profiler_client_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profiler_client_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profiler_client_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profiler_clientid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profiler_clientid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profiler_clientid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profiler_clientid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profiler_success'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profiler_success'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profiler_success'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profiler_success'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profiler_progress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profiler_progress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profiler_progress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profiler_progress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profiler_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profiler_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profiler_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profiler_log'"
