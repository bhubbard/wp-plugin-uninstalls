#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slashadmin_options'
wp option delete 'downloaded_font_files'

# Delete Transients
wp transient delete 'users_status'

# Clear Cron Jobs
wp cron event delete 'delete_fonts_folder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slash_accept'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slash_accept'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slash_accept'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slash_accept'"
