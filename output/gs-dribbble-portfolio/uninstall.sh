#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'op_client'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'gspdribbble_activation_redirect'
wp option delete 'gs_dribb_active_time'
wp option delete 'gs_dribb_review_dismiss'
wp option delete 'gs_dribb_maybe_later'

# Delete Transients
wp transient delete 'gsplugins-pro-plugins'
wp transient delete 'gsplugins_free_plugins'

# Clear Cron Jobs

