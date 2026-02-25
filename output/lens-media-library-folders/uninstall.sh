#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lens_pro_license_snapshot'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_lens_quick_switch_all_folders_paths_v%' OR option_name LIKE '_site_transient_lens_quick_switch_all_folders_paths_v%'"

# Clear Cron Jobs
wp cron event delete 'lens_daily_cleanup'
wp cron event delete 'lens_cache_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lens_navigation_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lens_navigation_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lens_navigation_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lens_navigation_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
