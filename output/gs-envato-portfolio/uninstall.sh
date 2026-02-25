#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'gsenvato_active_time'
wp option delete 'gsenvato_review_dismiss'
wp option delete 'gsenvato_maybe_later'
wp option delete 'gsadmin_maybe_later'
wp option delete 'gsenv_activation_redirect'
wp option delete 'gsadmin_active_time'

# Delete Transients
wp transient delete 'gsplugins-pro-plugins'
wp transient delete 'gsplugins_free_plugins'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gsenv_ignore_notice279'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gsenv_ignore_notice279'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gsenv_ignore_notice279'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gsenv_ignore_notice279'"
