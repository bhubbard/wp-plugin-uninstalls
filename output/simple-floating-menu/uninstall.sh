#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'downloaded_font_files'
wp option delete 'sfm_settings'
wp option delete 'sfm_first_activation'
wp option delete 'sfm_dismissed_notices'

# Clear Cron Jobs
wp cron event delete 'delete_fonts_folder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfm_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfm_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfm_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfm_dismissed_notices'"
