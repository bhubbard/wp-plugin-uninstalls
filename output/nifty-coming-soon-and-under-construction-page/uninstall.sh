#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nifty_cs_option'
wp option delete 'nifty_cs_migrated'
wp option delete 'option_tree'
wp option delete 'nifty_cs_options'
wp option delete 'downloaded_font_files'

# Clear Cron Jobs
wp cron event delete 'delete_fonts_folder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
