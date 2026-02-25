#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autoweco_convert_images_to_webp_options'

# Delete Transients
wp transient delete 'autoweco_conversion_errors'
wp transient delete 'autoweco_settings_reset'

# Clear Cron Jobs
wp cron event delete 'autoweco_periodic_log_cleanup_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoweco_pending_conversion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoweco_pending_conversion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoweco_pending_conversion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoweco_pending_conversion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
