#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'gs_pinterest_settings'
wp option delete 'gspin_upgraded_to_1_4_0'
wp option delete 'gspin_active_time'
wp option delete 'gspin_review_dismiss'
wp option delete 'gspin_maybe_later'
wp option delete 'gsadmin_active_time'
wp option delete 'gsadmin_maybe_later'
wp option delete 'gspin_activation_redirect'
wp option delete 'gspin_shortcode_prefs'

# Delete Transients
wp transient delete 'gsplugins-pro-plugins'
wp transient delete 'gsplugins_free_plugins'

# Clear Cron Jobs
wp cron event delete 'gs_pinterest_pin_sync_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gspin_ignore_notice279'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gspin_ignore_notice279'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gspin_ignore_notice279'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gspin_ignore_notice279'"
