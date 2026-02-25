#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'orphanix_last_live_scan_at'
wp option delete 'orphanix_last_live_scan_status'
wp option delete 'orphanix_last_live_scan_mode'
wp option delete 'orphanix_scan_compat'
wp option delete 'orphanix_delete_on_uninstall'
wp option delete 'orphanix_db_version'
wp option delete 'orphanix_db_migrated'
wp option delete 'widget_media_image'
wp option delete 'widget_media_gallery'
wp option delete 'orphanix_live_scan_archives'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_progress' OR option_name LIKE '_site_transient_%_progress'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_settings' OR option_name LIKE '_site_transient_%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_processing' OR option_name LIKE '_site_transient_%_processing'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_orphanix_live_scan_progress_%' OR option_name LIKE '_site_transient_orphanix_live_scan_progress_%'"

# Clear Cron Jobs
wp cron event delete 'orphanix_process_scan_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
