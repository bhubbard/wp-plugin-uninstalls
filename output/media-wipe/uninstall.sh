#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'media_wipe_settings'
wp option delete 'media_wipe_activity_log'
wp option delete 'media_wipe_security_log'
wp option delete 'widget_media_image'
wp option delete 'media_wipe_version'

# Delete Transients
wp transient delete 'media_wipe_scan_progress'
wp transient delete 'media_wipe_unused_results'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_delete_selected' OR option_name LIKE '_site_transient_%_delete_selected'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_delete_all' OR option_name LIKE '_site_transient_%_delete_all'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_fetch_media' OR option_name LIKE '_site_transient_%_fetch_media'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'media_wipe_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'media_wipe_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'media_wipe_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'media_wipe_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'media_wipe_notification_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'media_wipe_notification_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'media_wipe_notification_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'media_wipe_notification_preferences'"
