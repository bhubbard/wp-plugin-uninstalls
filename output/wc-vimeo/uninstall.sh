#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_settings_vimeo_cron_interval'
wp option delete 'wc_settings_vimeo_transient_duration'
wp option delete 'wc_settings_vimeo_client_id'
wp option delete 'wc_settings_vimeo_client_secret'
wp option delete 'wc_settings_vimeo_access_token'

# Delete Transients
wp transient delete 'wc_vimeo_videos_main_transient'

# Clear Cron Jobs
wp cron event delete 'wp_vimeo_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wc_vimeo_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wc_vimeo_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wc_vimeo_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wc_vimeo_%'"
